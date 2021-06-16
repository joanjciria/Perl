#!/usr/bin/perl
#fitxers8.pl
use strict;
use warnings;
use utf8;
use open IN => ':utf8', OUT => ':encoding(ISO-8859-15)';
 
$/ = ""; 
open CITES, "cites.txt" or die $!; 
my @fitxer = <CITES>; 
print $fitxer[1], "\n";
