#!/usr/bin/perl
#hash3.pl
use strict;
use warnings;
use utf8;
my %localitzacio = ( 
        Joan => "Barcelona", 
        Marta => "Girona", 
        Jaume => "Palma", 
        Cristina => "Reus" 
);
$localitzacio{Rosa} = "Lleida"; 
print "Rosa viu a $localitzacio{Rosa}\n";