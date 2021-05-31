#!/usr/bin/perl
#bucles9.pl 
use strict;
use warnings;
use utf8;
my %hash = ( cotxe => 'car',
            avió => 'plane',
            tren => 'train' );
for (keys %hash) { 
    print "Català: $_\n"; 
    print "Anglès: $hash{$_}\n\n"; 
}