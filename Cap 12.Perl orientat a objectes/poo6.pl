#!/usr/bin/perl 
#poo6.pl
use strict;
use warnings;
use utf8;
use lib 'G:\Perl\moduls';
use persona4; 
 
my  $objecte = Persona->new (
    cognom => "Galilei",
    nom => "Galileu",
    adresa => "Carrer Torre Inclinada 89.",
    ocupació => "astrònom"
);
 
print "El cognom d'aquesta persona és: ", $objecte->cognom, "\n";