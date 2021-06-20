#!/usr/bin/perl 
#poo4.pl
use strict;
use warnings;
use utf8;
 
my $a = []; 
 
print '$a és una ', " referència ", ref $a,"\n"; 
bless($a, "Persona");
print '$a és una ', " referència ", ref $a,"\n"; 
bless($a, "Animal::Vertebrat::Mamifer"); 
print '$a és una ', " referència ", ref $a,"\n"; 