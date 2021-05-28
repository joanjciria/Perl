#!/usr/bin/perl
#matrius14.pl
use strict;
use warnings;
use utf8;
my @array=(10, 20, 30, 40); 
print "Abans: @array\n"; 
for (@array) { $_ *= 2 } 
print "Després: @array\n";