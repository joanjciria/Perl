#!/usr/bin/perl 
#variables9.pl
use strict;
use warnings;
use utf8;
$registre = 4; 
print "Som al registre ", $registre, "\n"; 
{ 
my $registre; 
$registre = 7; 
print "Dins el bloc, som al registre ", $registre, "\n"; 
} 
print "Encara som al registre ", $registre, "\n";