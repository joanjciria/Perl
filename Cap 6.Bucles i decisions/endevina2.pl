#!/usr/bin/perl 
#endevina2.pl
use strict;
use warnings;
use utf8;
my $contrasenya = "foxtrot"; 
print "Introdueix la contrasenya: "; 
my $intent = <STDIN>; 
chomp $intent; 
if ($contrasenya eq $intent) { 
print "Passa, amic.\n"; 
} 
if ($contrasenya ne $intent) { 
die "Fora d'aquí, impostor!\n"; 
}