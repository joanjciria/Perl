#!/usr/bin/perl
#split.pl 
use strict;
use warnings;
use utf8;
my $passwd = "kake:x:10018:10020::/home/kake:/bin/bash"; 
my @camps = split /:/, $passwd; 
print "Nom d'usuari : $camps[0]\n"; 
print "ID d'usuari : $camps[2]\n"; 
print "Directori inicial : $camps[5]\n";