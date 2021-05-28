#!/usr/bin/perl
#hash7.pl
use strict;
use warnings;
use utf8;
my %localitzacio = ( 
        Joan => "Barcelona", 
        Marta => "Girona", 
        Jaume => "Palma", 
        Cristina => "Reus" 
);
for (values %localitzacio) { 
print "$_\n"; 
}