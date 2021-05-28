#!/usr/bin/perl
#matrius2.pl
use strict;
use warnings;
use utf8;
 
my @array1; 
my $escalar1; 
@array1 = qw(dilluns dimarts dimecres dijous divendres dissabte diumenge);
$escalar1 = @array1; 
print "L'array 1 és @array1\nL'escalar 1 és $escalar1\n"; 

my @array2; 
my $escalar2; 
@array2 = qw(Primavera Estiu Tardor Hivern); 
$escalar2 = @array2; 
print "L'array 2 és @array2\nL'escalar 2 és $escalar2\n";