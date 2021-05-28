#!/usr/bin/perl
#matrius20.pl
use strict;
use warnings;
use utf8;
my @unsorted = (1, 2, 11, 24, 3, 36, 40, 4); 
my @sorted = sort @unsorted; 
print "Ordenat: ", join(", ", @sorted), "\n";