#!/usr/bin/perl 
#poo10.pl
use strict;
use warnings;
use utf8;
use lib 'G:\Perl\moduls';
use persona8; 
 
my $object = Persona->new ( 
    cognom => "Galilei", 
    nom => "Galileu", 
    adresa => "9.81 Pisa Apts.", 
    ocupacio => "astrònom" 
); 
 
$object->escriucarta("Hem deus diners. Si us plau, paga'm.");