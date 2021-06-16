#!/usr/bin/perl
#fitxers9.pl
use strict;
use warnings;
use utf8;
use open IN => ':utf8', OUT => ':encoding(ISO-8859-15)';
 
$/ = "\n%\n"; 		# o $/=”” a l’exemple anterior
open CITES, "cites.txt" or die $!; 
my $counter = 0;
 
while (<CITES>) { 
    print $counter++, ":"; 
    print ((split /\n/, $_)[0]); 
    print "\n"; 
}