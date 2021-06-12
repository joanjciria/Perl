#!/usr/bin/perl
#ancoratges.pl
use strict;
use warnings;
use utf8;
my $rima = "osa"; 
while (<>) { 
    print if /$rima$/; 
}