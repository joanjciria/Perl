#!/usr/bin/perl 
#regex4.pl
use strict;
use warnings;
use utf8;
 
$_ = "La vella del fons del pou és morta mirant la llum a través de l'aigua.";
if (/és morta/) { 
    print "'és morta' és a la cadena.\n"; 
} 
if (/a traves/) { 
    print "'a traves' coincideix.\n"; 
}