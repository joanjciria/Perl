#!/usr/bin/perl 
#regex5.pl
use strict;
use warnings;
use utf8;
 
$_ = "La vella del fons del pou és morta mirant la llum a través de l'aigua.";
if (/LLUM/i) { 
    print "La LLUM arriba al fons del pou.\n"; 
}else{ 
    print "La LLUM no arriba al fons del pou.\n"; 
}