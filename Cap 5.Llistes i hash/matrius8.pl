#!/usr/bin/perl
#matrius8.pl
use strict;
use warnings;
use utf8;
my @array = (1, 3, 5, 7, 9); 
my $index = 3; 
print $array[$index], "\n"; 
$array[$index] = 12;
print join(", ",@array);