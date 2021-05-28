#!/usr/bin/perl
#hash1.pl
use strict;
use warnings;
use utf8;
my %localitzacio = ( 
        Joan => "Barcelona", 
        Marta => "Girona", 
        Jaume => "Palma", 
        Cristina => "Reus" 
);
print "Jaume viu a ", $localitzacio{Jaume}, "\n";