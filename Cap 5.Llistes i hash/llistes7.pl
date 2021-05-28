#!/usr/bin/perl
#llistes7.pl
use strict;
use warnings;
use utf8;
print ('un', 'dos', 'tres', 'quatre');
print "\n";
print (('un', 'dos', 'tres', 'quatre'));
print "\n";
print (qw(un dos tres), 'quatre');
print "\n";
print (qw(un dos), q(tres), 'quatre');
print "\n";
print (qw(un dos tres quatre));