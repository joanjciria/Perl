#!/usr/bin/perl 
#modificadors.pl
use strict;
use warnings;
use utf8;
my $cadena = "Hi ha més d’una Manera de fer-ho!"; 
print "Introduïu una expressió de prova:"; 
my $pat = <STDIN>; 
chomp($pat); 
if ($cadena =~ /$pat/) { 
print "Enhorabona! '$pat' coincideix amb la cadena de mostra.\n"; 
} else { 
print "Ho sento. No s'ha trobat cap coincidència per a '$pat'"; 
}