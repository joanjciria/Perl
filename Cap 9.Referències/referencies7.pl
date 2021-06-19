#!/usr/bin/perl
#referencies7.pl 
use strict;
use warnings;
use utf8;
 
my $ar = [100, 200, [ 2, 4, 6, 8 ], 300, 400];
for(@$ar){
   print("$_  "); 
}
 
print("\n");