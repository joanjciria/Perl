#!/usr/bin/perl 
#join.pl
use strict;
use warnings;
use utf8;

my $passwd = "kake:x:10018:10020::/home/kake:/bin/bash"; 
my @camps = split /:/, $passwd; 
print "Nom d'usuari : $camps[0]\n"; 
print "ID d'usuari : $camps[2]\n"; 
print "Directori inicial : $camps[5]\n";
my $passwd2 = join "#", @camps; 
print "Contrasenya original : $passwd\n"; 
print "Nova contrasenya : $passwd2\n";