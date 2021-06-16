#!/usr/bin/perl 
#referencies1.pl
use strict;
use warnings;
use utf8;
 
my $x = 10;
# creem la referència $xr
my $xr = \$x;
 
# desferenciem $xr i canviem el valor de $x (multiplicant per 2)
$$xr = $$xr * 2; 
 
print("$x\n");
print("$$xr \n");
print("$xr\n"); 
