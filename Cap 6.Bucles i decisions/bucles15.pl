#!/usr/bin/perl 
#bucles15.pl
use strict;
use warnings;
use utf8;
my @array = ( "vermell", "blau", "ATURA AIXÒ ARA", "VERD"); 
for (@array) { 
    last if $_ eq "ATURA AIXÒ ARA"; 
    print "El color d'avui és: $_\n"; 
}