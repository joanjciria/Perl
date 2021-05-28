#!/usr/bin/perl
#matrius19.pl
use strict;
use warnings;
use utf8;
my @unsorted = qw(Cohen Clapton Costello Cream Cocteau); 
print "Desordenada: ", join(", ", @unsorted), "\n"; 
my @sorted = sort @unsorted; 
print "Ordenada: ", join(", ", @sorted), "\n";