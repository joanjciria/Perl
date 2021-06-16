#!/usr/bin/perl 
#operador1.pl
use strict;
use warnings;
use utf8;
use open IN => ':utf8', OUT => ':encoding(ISO-8859-15)';
 
my $nomfitxer = 'noufitxer2.txt';
if(-e $nomfitxer){
   print("El fitxer $nomfitxer existeix\n");
}else{
   print("El fitxer $nomfitxer no existeix\n");
}