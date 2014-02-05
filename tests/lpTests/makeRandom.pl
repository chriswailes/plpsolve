#! /usr/bin/perl


if ($#ARGV != 2){
    printf "Usage: makeRandom m n fileName\n";
    exit 1;
}

$m = $ARGV[0];
$n = $ARGV[1];
$fileName = ">".$ARGV[2].".in";
$lim = 100.0;



open OFILE,$fileName or die $!;

sub randomCoeffRow {
    my $i = 0;
    for ($i=0; $i < $n; ++$i){
	if ($i > 0){
	    printf OFILE ",";
	}
	$val = rand (2.0 * $lim) - $lim;
	printf OFILE "%f", $val;
    }
    printf OFILE "\n"
}

sub printBounds {
    my ($num) = @_;
    my $i = 0;
    for ($i = 0; $i < $num; ++$i){
	if ($i > 0){
	    printf OFILE ",";
	}
	$toss = rand (1.0);
	if ($toss >= 0.9){
	    printf OFILE "-Inf";
	} else {
	    $val = -1.0 * rand ($lim);
	    printf OFILE "%f", $val;
	}
    }
    printf OFILE "\n";

     for ($i = 0; $i < $num; ++$i){
	if ($i > 0){
	    printf OFILE ",";
	}
	$toss = rand (1.0);
	if ($toss >= 0.9){
	    printf OFILE "Inf";
	} else {
	    $val = 1.0 * rand ($lim);
	    printf OFILE "%f", $val;
	}
    }
    printf OFILE "\n";
}

# Print header.
printf OFILE "%d,%d\n", $m, $n;

#Objective
randomCoeffRow ();

for ($k = 0; $k < $m; ++$k)
{
    randomCoeffRow();
}

# Now for row bounds
printBounds($m);

# Now for column bounds
printBounds($n);


close OFILE;
