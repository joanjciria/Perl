#!/usr/bin/perl 
#referencies4.pl
use strict;
use warnings;
use utf8;
 
my %mesos = (Gen => 1,
   Feb => 2,
   Mar => 3,
   Abr => 4,
   Mai => 5,
   Jun => 6,
   Jul => 7,
   Ago => 8,
   Set => 9,
   Oct => 10,
   Nov => 11,
   Des => 12);
my $mesosr = \%mesos; 
for(keys %$mesosr){
    print("$_  = $mesosr->{$_}\n");
}