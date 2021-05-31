#!/usr/bin/perl 
#apassejar.pl
use strict;
use warnings;
use utf8;
print "Quin temps fa fora? "; 
my $temps = <STDIN>; 
print "Quants de graus fa? "; 
my $temperatura = <STDIN>; 
print "Quants correus electrònics queden per respondre? "; 
my $treball = <STDIN>; 
chomp($temps, $temperatura); 
if ($temps eq "neva") { 
    print "D'acord, anem!\n"; 
} elsif ($temps eq "plou") { 
    print "De cap manera, em quedo a casa.\n"; 
} elsif ($temperatura < 18) { 
    print "Fa massa fred per mi!\n"; 
} elsif ($treball > 30) { 
    print "Ho sento, estic massa ocupat.\n"; 
} else { 
    print "Bé, perquè no?\n"; 
}