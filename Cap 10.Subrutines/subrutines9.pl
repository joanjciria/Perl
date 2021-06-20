#!/usr/bin/perl 
#subrutines9.pl
use strict;
use warnings;
use utf8;
 
my @a = (1,3,2,6,7);
my @b = (8,4,9);
 
my @c = pops(\@a, \@b);
print ("@c \n"); 
 
sub pops {
    my @ret = ();
 
    for my $aref (@_) {
        push (@ret, pop @$aref);
    }
    return @ret;
}