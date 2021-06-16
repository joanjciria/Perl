#!/usr/bin/perl 
#operador4.pl
use strict;
use warnings;
use utf8;
use open IN => ':utf8', OUT => ':encoding(ISO-8859-15)';
 
my $nomfitxer = 'noufitxer2.txt';
 
if(-e -f -r $nomfitxer){
   print("El fitxer $nomfitxer existeix i és llegible\n");  
}