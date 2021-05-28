#!/usr/bin/perl
#bucles1.pl
use strict;
use warnings;
use utf8;
my ($valor, $de, $a, $resultat, %canvi); 
%canvi = ( 
euros => 1, 
dolars => 1.17, 
lliures => 0.85, 
iens => 129.9
); 
print "Introduïu la vostra moneda inicial: "; 
$de = <STDIN>; 
print "Introduïu la vostra moneda objectiu: "; 
$a = <STDIN>; 
print "Introduïu l'import: "; 
$valor = <STDIN>; 
chomp($de,$a,$valor); 
$resultat = $canvi{$a} / $canvi{$de}; 
print "$valor $de són ",$valor*$resultat," $a.\n";
