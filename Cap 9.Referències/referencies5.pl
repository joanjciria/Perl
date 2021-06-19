#!/usr/bin/perl 
#referencies5.pl
use strict;
use warnings;
use utf8;
 
my @array1 = ( 10, 20, 30, 40 ); 
my @array2 = ( 1, 2, \@array1, 3, 4);
 
print "@array2\n";