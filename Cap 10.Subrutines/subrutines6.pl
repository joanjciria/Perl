#!/usr/bin/perl 
#subrutines6.pl
use strict;
use warnings;
use utf8;
 
my $a = 10;
my $b = 20;
 
fer_alguna_cosa($a,$b);
 
print "Després de trucar la subrutina a = $a, b = $b \n";
 
sub fer_alguna_cosa{
    $_[0] = 1;
    $_[1] = 2;
}