#!/usr/bin/perl
#variables6.pl 
use warnings;
use utf8;
$a=4; 
$b=10; 
print "Les nostres variables són ", $a, " i ", $b, "\n"; 
$b=$a++; 
print "Després de l'increment, tenim ", $a, " i ", $b, "\n"; 
$b=++$a*2; 
print "Ara, tenim ", $a, " i ", $b, "\n"; 
$a=--$b+4; 
print "Finalment, tenim ", $a, " i ", $b, "\n";