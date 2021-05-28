#!/usr/bin/perl
#hash5.pl
use strict;
use warnings;
use utf8;
my %localitzacio = ( 
        Joan => "Barcelona", 
        Marta => "Girona", 
        Jaume => "Palma", 
        Cristina => "Reus" 
);
delete $localitzacio{Cristina}; 
print "Cristina viu a $localitzacio{Cristina}\n";