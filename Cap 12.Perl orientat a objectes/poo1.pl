#!/usr/bin/perl 
#poo1.pl
use strict;
use warnings;
use Net::FTP;
 
my $ftp = Net::FTP->new("ftp.cpan.org") 
or die "No es pot connectar a: $@\n"; 
$ftp->login("anonymous"); 
$ftp->cwd("/pub/CPAN"); 
$ftp->get("disclaimer.html"); 
$ftp->close;
