#!/usr/bin/perl
#foropcio.pl 
use strict;
use warnings;
use utf8;
print "Si us plau, escull la teva opció (de l'1 al 10): "; 
my $opcio = <STDIN>; 
for ($opcio) { 
    $_ == 1 && print "Has escollit el número un\n"; 
    $_ == 2 && print "Has escollit el número dos\n"; 
    $_ == 3 && print "Has escollit el número tres\n"; 
    $_ == 4 && print "Has escollit el número quatre\n"; 
    $_ == 5 && print "Has escollit el número cinc\n"; 
    $_ == 6 && print "Has escollit el número sis\n"; 
    $_ == 7 && print "Has escollit el número set\n"; 
    $_ == 8 && print "Has escollit el número vuit\n"; 
    $_ == 9 && print "Has escollit el número nou\n"; 
    $_ == 10 && print "Has escollit el número deu\n"; 
}