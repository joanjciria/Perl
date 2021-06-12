#!/usr/bin/perl
#regex2.pl 
use strict;
use warnings;
use utf8;
$_ = "La vella del fons del pou és morta mirant la llum a través de l'aigua.";
if (/aigua/) { 
    print "Hurra! has trobat la paraula 'aigua'\n"; 
}