#!/usr/bin/perl 
#subrutines10.pl
use strict;
use warnings;
use utf8;
sub myHash{  
   my (%hash) = @_;  
   foreach my $key ( keys %hash ){  
      my $value = $hash{$key};  
      print "$key : $value\n";  
   }  
}  
my %hash=('Marta' =>'Mare',
           'Roger'=>'Pare',
           'Cristina'=>'Filla',
           'Josep'=>'Fill');

myHash(%hash);