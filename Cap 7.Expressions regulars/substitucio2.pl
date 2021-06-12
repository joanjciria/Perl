#!/usr/bin/perl
#substitucio2.pl  
use strict;
use warnings;
use utf8;
$_ = "... llenties cigrons, síndries melons, panses pinyons, figues ametllons";
s/(\w+)\s+(\w+)/$2 $1/; 
print $_, "\n";