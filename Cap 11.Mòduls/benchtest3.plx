#!/usr/bin/perl 
# benchtest3.plx 
use warnings; 
use strict;
use utf8;
use Text::Wrap; # Imports wrap().
my @lines =();
@lines = (<<"EO_G&S" =~ /\S.*\S/g);
Això és particularment ràpid,
inintel•ligible
patter no sol ser
escoltat,
i si
ho és,
no importa.
EO_G&S
$Text::Wrap::columns = 50;
print wrap(" " x 8, " " x 3, @lines), "\n";
