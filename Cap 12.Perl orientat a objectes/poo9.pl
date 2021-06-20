#!/usr/bin/perl 
#poo9.pl
use strict;
use warnings;
use utf8;
use lib 'G:\Perl\moduls';
use persona7; 
 
print "Al principi: ", Persona->headcount, "\n"; 
my $object = Persona->new ( 
    cognom => "Galilei", 
    nom => "Galileo", 
    adresa => "9.81 Pisa Apts.", 
    ocupacio => "astrònom" 
); 
print "Població ara: ", Persona->headcount, "\n"; 
my $object2 = Persona->new ( 
    cognom => "Einstein", 
    nom => "Albert", 
    adresa => "9E16, Relativity Drive", 
    ocupacio => "físic" 
); 
print "Població ara: ", Persona->headcount, "\n";
 
print "\nGent que coneixem:\n"; 
for my $persona(Persona->tothom) { 
print $persona->nom, " ", $persona->cognom,, "\n"; 
}