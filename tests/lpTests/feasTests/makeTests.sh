#! /bin/bash

rand="rand"

for ((i=0;i<500;++i))
do
    m=$RANDOM;
    n=$RANDOM;
    let "m %= 100";
    let "n %= 100";
    echo $i, $m, $n;
    perl ../makeRandom.pl $m $n $rand$i;
    perl ../check.pl $rand$i
done