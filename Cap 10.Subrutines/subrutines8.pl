#!/usr/bin/perl 
#subrutines8.pl
use strict;
use warnings;
use utf8;
 
my @a = (1,3,2,6,8,4,9);
my $m = &max(\@a);
 
print "El màxim de @a és $m\n";
 
sub max{
    my $aref = $_[0];
    my $k = $aref->[0];
 
    for(@$aref){
        $k = $_ if($k < $_);
    }
    return $k;
}