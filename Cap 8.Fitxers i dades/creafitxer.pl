#!/usr/bin/perl
#creafitxer.pl
use strict;
use warnings;
use open IN => ':utf8', OUT => ':encoding(ISO-8859-15)';
 
$/ = ""; 
my $counter = 1; 
while (<>) { 
    print $counter++, ":"; 
    print ((split /\n/, $_)[0]); 
    print "\n"; 
}
