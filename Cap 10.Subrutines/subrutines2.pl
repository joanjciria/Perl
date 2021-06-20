#!/usr/bin/perl 
#subrutines2.pl
use strict;
use warnings;
use utf8;
sub saluda{
    my $nom = 'Joan';
    print "Hola, $nom \n";
    $nom;
}
print &saluda , "\n";