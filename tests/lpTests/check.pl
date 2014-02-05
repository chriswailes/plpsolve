#! /usr/bin/perl

if ($#ARGV < 0 || $#ARGV >= 2) {
    printf "Usage: check.pl fileStem \n";
    exit 1;
}

$fileName = $ARGV[0];
if ($fileName =~ m/(\w+)\..*/){
    $fileStem = $1;
} else {
    $fileStem = $fileName;
}

$inpFileName = sprintf "%s.in", $fileName;
$outFileName = sprintf "%s.ampl", $fileStem;

open IFILE, "< $inpFileName" or die $!;
open OFILE, "> $outFileName" or die $!;
# read from the file

sub printHeader {
    my ($numVars,@colBnds) = @_;
    my $i = 0;
##    printf "n = %d \n", $numVars;
    for ($i = 1; $i <= $numVars; ++$i){
	printf OFILE "var x%d ", $i;

	if ($colBnds[$i-1] =~ m/-?\d*\.?\d+/ ){
	    printf OFILE ", >= %f ", $colBnds[$i-1];
	}
	if ($colBnds[$i+$numVars-1] =~ m/-?\d*\.?\d+/){
	       printf OFILE ", <= %f ", $colBnds[$i+$numVars-1];
	}
	printf OFILE "  ; \n";
    }
    printf OFILE "# End of variable declarations \n";
}

sub printObjectiveRow {
    my ($numVars,@rowCoeffs) = @_;
    my $i = 0;
    printf OFILE "maximize obj: 0 ";
    for ($i = 1; $i <= $numVars; ++$i){
	printf OFILE " +( %f * x%d ) ", $rowCoeffs[$i-1], $i;
    }
    printf OFILE "; \n";
}

sub printConstraint{
    my ($numVars, $consID, $lb, $ub, @rowCoeffs)=@_;
    my $i = 0;
    print "\n";
    if ($lb =~  m/-?\d*\.?\d+/){
	printf OFILE "consLB%d: ", $consID;
	for ($i = 1; $i <= $numVars; ++$i){
	    if ($i > 1) { 
		printf OFILE "+";
	    }
	    printf OFILE " (%f * x%d) ", $rowCoeffs[$consID][$i-1], $i;
	}
	printf OFILE " >= %f ; \n", $lb;
    }
      if ($ub =~  m/-?\d*\.?\d+/){
	printf OFILE "consUB%d: ", $consID;
	for ($i = 1; $i <= $numVars; ++$i){
	    if ($i > 1){ 
		printf OFILE "+";
	    }
	    printf OFILE " (%f * x%d) ", $rowCoeffs[$consID][$i-1], $i;
	}
	printf OFILE " <= %f ; \n", $ub;
    }
}


$lineCount=1;
$m=-1;
$n=-1;
@objFun=();
@constraintRows=([]);
@colLowerBound=();
@colUpperBound =();
@rowLowerBound=();
@rowUpperBound = ();

while ($line=<IFILE>) {
    @lineFields=split(/\s*,\s*/,$line);
    if ($lineCount == 1){
	$m=$lineFields[0];
	$n=$lineFields[1];
##	printf("m = %d, n=%d \n", $m, $n);
	##printHeader($n);
    }
    
    if ($lineCount == 2){
	@objFun = @lineFields;
##	
    }

    if ($lineCount > 2 && $lineCount <= 2+$m){
	# we have a constraint row.
	$constraintRows[$lineCount-3]= [@lineFields];
    }
    if ($lineCount == 3+$m){
	@rowLowerBound = @lineFields;
    }
    if ($lineCount == 4 +$m){
	@rowUpperBound = @lineFields;
    }

    if ($lineCount == 5+$m){
	@colLowerBound = @lineFields;
    }

    if ($lineCount == 6+$m){
	@colUpperBound = @lineFields;
    }

    if ($lineCount > 6 +$m){
	printf STDERR "Warning: Extra line in the file? (line %d) \n", $lineCount;
    }

    $lineCount = $lineCount+1;
}

if ($lineCount <= 6 +$m){
    printf STDERR "Warning: incomplete file (line %d) \n", $lineCount;
    exit 1;
}

printHeader($n, @colLowerBound,@colUpperBound);
printObjectiveRow($n,@objFun);

for($k = 0; $k < $m; ++$k){
    printConstraint($n, $k,  $rowLowerBound[$k], $rowUpperBound[$k], @constraintRows);
}

printf OFILE " solve; \n";

for ($k=1; $k <= $n; ++$k)
{
    printf OFILE " display x%d; \n", $k;
}

printf OFILE " display obj; \n";
print OFILE "end; \n";
close IFILE;
close OFILE;

$cmdToRun = sprintf "glpsol --math %s.ampl ", $fileStem;
printf "Running %s \n", $cmdToRun;
system $cmdToRun;
