#!/usr/bin/perl
#hash4.pl
use strict;
use warnings;
use utf8;
my %localitzacio = ( 
        Joan => "Barcelona", 
        Marta => "Girona", 
        Jaume => "Palma", 
        Cristina => "Reus" 
);
$localitzacio{Cristina} = "Sabadell"; 
print "Cristina viu a $localitzacio{Cristina}\n";