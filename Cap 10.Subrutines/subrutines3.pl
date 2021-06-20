#!/usr/bin/perl 
#subrutines3.pl
use strict;
use warnings;
use utf8;
sub saluda{
    my $nom = 'Joan';
    print "Hola, $nom \n";
    return $nom;
}
print &saluda , "\n";