#!/usr/bin/perl
#hash2.pl
use strict;
use warnings;
use utf8;
my %localitzacio = ( 
        Joan => "Barcelona", 
        Marta => "Girona", 
        Jaume => "Palma", 
        Cristina => "Reus" 
);
my %persona = reverse %localitzacio; 
print "$persona{Girona} viu a Girona\n"; 