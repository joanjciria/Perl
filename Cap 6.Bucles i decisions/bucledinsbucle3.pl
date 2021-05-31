#!/usr/bin/perl 
#bucledinsbucle3.pl
use strict;
use warnings;
use utf8;
 
my @sortir = qw(abandona surt marxa acaba);
EXTERIOR: while (<STDIN>) { 
    chomp; 
    INTERIOR: for my $check (@sortir) { 
        last EXTERIOR if $check eq $_; 
    }
    print "Ei, has dit $_\n"; 
}