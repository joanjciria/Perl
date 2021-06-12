#!/usr/bin/perl 
#backreferences.pl
use strict;
use warnings;
use utf8;

$_ = '1: Una frase tonta (495,a) *PERO* una que ens serà útil. (3)'; 
print "Entra una expressió regular: "; 
my $patro = <STDIN>; 
chomp($patro);
if (/$patro/) { 
    print "El text coincideix amb el patró '$patro'.\n"; 
    print "\$1 és '$1'\n" if defined $1; 
    print "\$2 és '$2'\n" if defined $2; 
    print "\$3 és '$3'\n" if defined $3; 
    print "\$4 és '$4'\n" if defined $4; 
    print "\$5 és '$5'\n" if defined $5; 
    } else { 
    print "'$patro' no s'ha trobat.\n"; 
}
