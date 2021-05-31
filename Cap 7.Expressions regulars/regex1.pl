#!/usr/bin/perl 
#regex1.pl
use strict;
use warnings;
use utf8;
my $trobada = 0; 
$_ ="La vella del fons del pou és morta mirant la llum a través de l'aigua.";
my $cercada = "llum"; 
foreach my $paraula (split) { 
    if ($paraula eq $cercada) { 
        $trobada = 1; 
        last; 
    } 
} 
if ($trobada) { 
    print "Hurra! has trobat la paraula 'llum'\n"; 
}
