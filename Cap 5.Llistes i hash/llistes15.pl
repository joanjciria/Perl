#!/usr/bin/perl
#llistes15.pl
use strict;
use warnings;
use utf8;
print join(", ",(qw(gen feb mar abr mai jun jul ago set oct nov des)) [2..8]);
print "\n";
print join(", ",(qw(gen feb mar abr mai jun jul ago set oct nov des)) [-2..1]);
print "\n";
print join(", ",(qw(gen feb mar abr mai jun jul ago set oct nov des)) [0,3,7..11]);