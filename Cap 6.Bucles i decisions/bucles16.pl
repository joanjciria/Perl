#!/usr/bin/perl 
#bucles16.pl
use strict;
use warnings;
use utf8;
 
my @array = (8, 3, 0, 2, 12); 
for (@array) { 
    if ($_ == 0) { 
    print "Saltant l'element zero.\n"; 
    next; 
    } 
    print "48 partit per $_ és ", 48/$_, "\n"; 

}