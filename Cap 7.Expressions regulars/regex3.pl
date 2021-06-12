#!/usr/bin/perl 
#regex3.pl
use strict;
use warnings;
use utf8;
 
my $dinsdelpou = "La vella del fons del pou és morta mirant la llum a través de l'aigua.";
if ($dinsdelpou !~ /peix/) { 
    print "No hi ha cap peix dins del pou\n"; 
}