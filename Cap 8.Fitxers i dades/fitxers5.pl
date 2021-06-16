#!/usr/bin/perl
#fitxers5.pl
use strict;
use warnings;
use utf8;
use open IN => ':utf8', OUT => ':encoding(ISO-8859-15)';
 
open FILE, "nlexemple.txt" or die $!; 
my @last5; 
while (<FILE>) { 
    push @last5, $_;            # Afegeix al final
    shift @last5 if @last5 > 5; # Agafa del principi
} 
print "Últimes cinc línies:\n", @last5;