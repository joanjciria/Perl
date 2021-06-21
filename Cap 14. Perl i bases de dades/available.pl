#!/usr/bin/perl 
#available.pl
use warnings; 
use strict; 
use DBI;
print " Controladors DBI disponibles:\n\n"; 
my @drivers=DBI->available_drivers('quiet'); 
foreach my $driver (@drivers) { 
print "$driver\n"; 
}
