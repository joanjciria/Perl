#!/usr/bin/perl
#erernepac3.pl 
use strict;
use warnings;
use utf8;
my $atura = 0; 
until ($atura) { 
    $_ = <STDIN>; 
    chomp; 
    if ($_) { 
        my $erernepac = reverse $_; 
        print "$erernepac\n"; 
    } else { 
        $atura = 1; 
    } 
} 
print "!tabaca ah's aj\n"; 