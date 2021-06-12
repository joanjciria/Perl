#!/usr/bin/perl
#substitucio.pl 
use strict;
use warnings;
use utf8;
$_ = "Desperteu! Desperteu! Por, Foc, Enemics! Desperteu! Foc, Enemics! Desperteu!"; 
s/Enemics/Fugiu/; 
print $_,"\n";