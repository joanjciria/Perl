#!/usr/bin/perl
#sumarapida1.pl
use strict;
use warnings;
use utf8;
my $total=0; 
$total += $_ for @ARGV; 
print "El total és $total\n";