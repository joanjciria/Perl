#!/usr/bin/perl
#llistes14.pl
use strict;
use warnings;
use utf8;

print join(', ','a'..'z'), "\n"; 
print "Compte amunt: ", join(', ',(1 .. 6)), "\n"; 
print "Compte avall: ", (6 .. 1), "\n"; 
print "Compte inversa: ", join(', ',reverse(1 .. 6)), "\n"; 
print "Mig alfabet: ",join(', ', ('a' .. 'm')), "\n"; 
print "L'altra mig inversa: ",join(', ', reverse('n' .. 'z')), "\n"; 
print "Del 3 a la z: ", (3 .. 'z'), "\n"; 
print "De la z al 3: ", join(', ',('z' .. 3)), "\n";