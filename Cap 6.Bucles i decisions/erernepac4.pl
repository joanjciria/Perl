#!/usr/bin/perl 
# erernepac4.pl
use strict;
use warnings;
use utf8;
 
while (<STDIN>) { 
chomp; 
last unless $_; 
    my $erernepac = reverse $_; 
    print "$erernepac\n"; 
} 
# i ara podem continuar amb una altra cosa ...