#!/usr/bin/perl
#hash6.pl
use strict;
use warnings;
use utf8;
my %localitzacio = ( 
        Joan => "Barcelona", 
        Marta => "Girona", 
        Jaume => "Palma", 
        Cristina => "Reus" 
);
for (keys %localitzacio) { 
print "$_ viu a $localitzacio{$_}\n"; 