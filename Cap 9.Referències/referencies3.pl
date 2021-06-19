#!/usr/bin/perl 
#referencies3.pl
use strict;
use warnings;
use utf8;
 
my @banda = qw(Crosby Stills Nash Young); 
my $ref = \@banda; 
for (0..3) { 
    print "Array : ", $banda[$_] , "\n"; 
    print "Reference: ", ${$ref}[$_], "\n"; 
}