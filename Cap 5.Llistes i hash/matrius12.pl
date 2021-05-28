#!/usr/bin/perl
#matrius12.pl
use strict;
use warnings;
use utf8;
my @vendes = (69, 118, 97, 110, 103, 101, 108, 105, 76, 111, 118, 101);
my @mesos = qw(gen feb mar mai abr jun jul ago set oct nov des); 
print "Vendes del segon trimestre:\n"; 
print "@mesos[3..5]\n@vendes[3..5]\n"; 
my @q2=@vendes[3..5]; 
# Resultats incorrectes al maig, agost, octubre, novembre i desembre.
@vendes[4, 7, 9..11] = (68, 112, 114, 118, 117); 
# Intercanvieu abril i maig 
@mesos[3,4] = @mesos[4,3];
print "@mesos \n";
print "@vendes \n";