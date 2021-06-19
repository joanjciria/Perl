#!/usr/bin/perl 
#referencies2.pl
use strict;
use warnings;
use utf8;
my $x = 10;
my @a = (1..5);
my $ar = \@a;
 
my $i = 0;
for(@$ar){
    print("$ar->[$i++] \n");
}