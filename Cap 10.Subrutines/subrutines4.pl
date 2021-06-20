#!/usr/bin/perl
#subrutines4.pl 
use strict;
use warnings;
use utf8;
sub saluda{
    my $nom = 'Joan';
    return $nom;
    print "Hola, $nom \n";
}
print &saluda , "\n";