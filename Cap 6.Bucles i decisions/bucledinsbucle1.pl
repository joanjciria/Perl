#!/usr/bin/perl 
#bucledinsbucle1.pl
use strict;
use warnings;
use utf8;
 
my @sortir = qw(abandona surt marxa acaba);
while (<STDIN>) { 
    chomp; 
    for my $check (@sortir) { 
        print "Provant $check amb $_\n"; 
        last if $check eq $_; 
        print "Bé, no era $check\n"; 
    print "Ei, has dit $_\n"; 
    }
}