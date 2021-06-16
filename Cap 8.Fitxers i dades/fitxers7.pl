#!/usr/bin/perl
#fitxers7.pl
use strict;
use warnings;
use utf8;
use open IN => ':utf8', OUT => ':encoding(ISO-8859-15)';
 
$/ = "\n%\n"; 
open CITES, "cites.txt" or die $!; 
my @fitxer = <CITES>; 
my $aleatori = rand(@fitxer); 
my $cita = $fitxer[$aleatori]; 
chomp $cita; 
print $cita, "\n";