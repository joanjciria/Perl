#!/usr/bin/perl
#fitxers3.pl
use strict;
use warnings;
use open IN => ':utf8', OUT => ':encoding(ISO-8859-15)';
my $liniano = 1; 
while (<>) { 
    print $liniano++; 
    print ": $_"; 
}
