#!/usr/bin/perl 
#bucles17.pl
use strict;
use warnings;
use utf8;
my @sortir = qw(abandona surt marxa acaba);
while (<STDIN>) { 
    chomp; 
    for my $check (@sortir) { 
        last if $check eq $_; 
    } 
    print "Ei, has dit $_\n"; 
}