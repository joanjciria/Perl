#!/usr/bin/perl 
#endevina1.pl
use strict;
use warnings;
use utf8;
my $objectiu = 12; 
print "Endevina el número!\n"; 
print "Entra el teu intent: "; 
my $intent = <STDIN>; 
if ($objectiu == $intent) { 
print "Això és! Ho heu endevinat.\n"; 
exit; 
} 
if ($intent > $objectiu) { 
print "El vostre número és major que el meu número\n"; 
exit; 
} 
if ($intent < $objectiu){ 
print "El vostre número és menor que el meu número\n"; 
exit; 
}
