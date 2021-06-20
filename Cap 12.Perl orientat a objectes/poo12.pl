#!/usr/bin/perl 
#poo12.pl 
use strict;
use warnings;
use utf8;
use lib 'G:\Perl\moduls';
use Empleat2;
my $object = Empleat->new ( 
    cognom => "Galilei", 
    nom => "Galileu", 
    adresa => "9.81 Pisa Apts.", 
    ocupacio => "astrònom" 
); 
 
$object->salari("12000"); 
print "Salari inicial: ", $object->salari, "\n"; 
print "Salari després de l'augment: ", $object->augment->salari, "\n";