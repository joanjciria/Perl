#!/usr/bin/perl
#interpolacio.pl 
use strict;
use warnings;
use utf8;
$_=q("Em pregunto per les paraules dels Ents per 'sí' i 'no'",
      va pensar.);
print "Escriu el text a trobar: "; 
my $patro = <STDIN>; 
chomp($patro);
if (/$patro/) { 
        print "El text coincideix amb el patró: '$patro'.\n"; 
    } else { 
        print "'$patro' : no trobat.\n"; 
}