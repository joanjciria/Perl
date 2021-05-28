#!/usr/bin/perl
#matrius18.pl
use strict;
use warnings;
use utf8;
my @array = (); 
unshift(@array, "primer"); 
print "Ara l'array és: @array\n"; 
unshift @array, "segon", "tercer"; 
print "Ara l'array és: @array\n"; 
shift @array ; 
print "Ara l'array és: @array\n";