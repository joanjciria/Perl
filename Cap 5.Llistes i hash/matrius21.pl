#!/usr/bin/perl
#matrius21.pl 
use strict;
use warnings;
use utf8;
 
my @unsorted = (1, 2, 11, 24, 3, 36, 40, 4);
my @string = sort { $a cmp $b } @unsorted;
print "Ordenació de cadena: @string\n";
my @number = sort { $a <=> $b } @unsorted;
print "Ordenació numèrica: @number\n";