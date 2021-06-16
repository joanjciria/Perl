#!/usr/bin/perl
#fitxers6.pl
use strict;
use warnings;
use utf8;
use open IN => ':utf8', OUT => ':encoding(ISO-8859-15)';
 
open FILE, "nlexemple.txt" or die $!; 
my @canço = <FILE>; 
print "Últimes cinc línies:\n", @canço[-5 ... -1];