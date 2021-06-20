#!/usr/bin/perl 
#subrutines7.pl
use strict;
use warnings;
use utf8;
 
my $a = 10;
my $b = 20;
 
fer_alguna_cosa($a,$b);
 
print "Després de trucar la subrutina a = $a, b = $b \n";
 
sub fer_alguna_cosa{
    my ($p1,$p2) = @_;
    $p1 = 1;
    $p2 = 2;
}