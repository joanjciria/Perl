#!/usr/bin/perl 
#operador2.pl
use strict;
use warnings;
use utf8;
use open IN => ':utf8', OUT => ':encoding(ISO-8859-15)';
 my $a = "noufitxer2.txt";  
my (@descripcio, $size);  
if (-e $a)  
{  
   push @descripcio, 'binary' if (-B _);  
   push @descripcio, 'un socket' if (-S _);  
   push @descripcio, 'un fitxer de text' if (-T _);  
   push @descripcio, 'un fitxer bloc especial' if (-b _);  
   push @descripcio, 'un fitxer caràcter especial' if (-c _);  
   push @descripcio, 'un directori' if (-d _);  
   push @descripcio, 'executable' if (-x _);  
   push @descripcio, (($size = -s _)) ? "$size bytes" : 'buit';  
   print "noufitxer2.txt és ", join(', ',@descripcio),"\n";  
}  