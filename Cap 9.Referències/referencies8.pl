#!/usr/bin/perl 
#referencies8.pl
use strict;
use warnings;
use utf8;
 
my @array = (1, 2, 3, 4, 5); 
my $array_r = \@array; 
print "Aquesta és la nostra matriu desferenciada: @{$array_r}\n"; 
for (@{$array_r}) { 
    print "Un element: $_\n"; 
} 
print "L'element més alt és el númeror $#{$array_r}\n"; 
print "Així és la nostra referència: $array_r\n";