#!/usr/bin/perl 
#bucles10.pl
use strict;
use warnings;
use utf8;
my @array = (1..10); 
foreach (@array) { 
    $_++; 
} 
print "L'array ara és: @array\n";