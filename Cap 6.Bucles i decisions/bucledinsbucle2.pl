#!/usr/bin/perl
#bucledinsbucle2.pl 
use strict;
use warnings;
use utf8;
my @sortir = qw(abandona surt marxa acaba);
EXTERIOR: while (<STDIN>) { 
    chomp; 
    INTERIOR: for my $check (@sortir) { 
           last if $check eq $_; 
    }
    print "Ei, has dit $_\n"; 
}