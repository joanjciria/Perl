#!/usr/bin/perl
#copia.pl
use strict;
use warnings;
use open IN => ':encoding(ISO-8859-15)', OUT => ':encoding(ISO-8859-15)';
 
my $origen = shift @ARGV; 
my $desti = shift @ARGV;
 
open IN, $origen or die "No es pot llegir el fitxer d'origen $origen: $!\n"; 
open OUT, ">$desti" or die "No es pot escriure al fitxer $desti: $!\n";
print "Copiant $origen a $desti\n"; 
while (<IN>) { 
    print OUT $_; 
}