#!/usr/bin/perl 
#poo2.pl
use strict;
use warnings;
use utf8;
 
my $a = []; 
my $b = {}; 
my $c = \1; 
my $d = \$c; 
print '$a és una ', " referència ", ref $a,"\n"; 
print '$b és una ', " referència ", ref $b,"\n"; 
print '$c és una ', " referència ", ref $c,"\n"; 
print '$d és una ', " referència ", ref $d,"\n";