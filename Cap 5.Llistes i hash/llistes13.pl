#!/usr/bin/perl
#llistes13.pl
use strict;
use warnings;
use utf8;
my $mun; my $mdos;
($mun, $mdos) = (1, 3); 
print join(
    ", ",("caps", "espatlles", "genolls", "dits dels peus")[$mun, $mdos]
    ); print "\n";