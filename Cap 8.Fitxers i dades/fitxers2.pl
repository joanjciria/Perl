#!/usr/bin/perl
#fitxers2.pl
use strict;
use warnings;
use open IN => ':utf8', OUT => ':encoding(ISO-8859-15)';
 
open FILE, "nlexemple.txt" or die $!; 
my $liniano = 1; 
while (<FILE>) { 
    print $liniano++; 
    print ": $_"; 
}