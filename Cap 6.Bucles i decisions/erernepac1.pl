#!/usr/bin/perl 
#erernepac1.pl
use strict;
use warnings;
use utf8;
while (<STDIN>) { 
chomp; 
die "!tabaca ah's aj\n" unless $_; 
my $erernepac = reverse $_; 
print "$erernepac\n"; 
}