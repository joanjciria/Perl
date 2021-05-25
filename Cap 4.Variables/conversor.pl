#!/usr/bin/perl 
#conversor.pl
use strict;
use warnings;
use utf8;
print "Convertidor de divises \n \nIntroduïu el tipus de canvi: "; 
my $dolar = <STDIN>;  
print "49518 dolars són ", (49_518*$dolar), " euros\n"; 
print "360 dolars són ", ( 360*$dolar), " euros\n"; 
print "30510 dolars són ", (30_510*$dolar), " euros\n";