#!/usr/bin/perl 
#operador3.pl
use strict;
use warnings;
use utf8;
use open IN => ':utf8', OUT => ':encoding(ISO-8859-15)';
 
my $nomftxer = 'noufitxer2.txt';
if(-e $nomftxer && -f _ && -r _ ){
   print("El fitxer $nomftxer existeix i és llegible\n");   
}