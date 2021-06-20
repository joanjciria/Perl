#!/usr/bin/perl 
#subrutines5.pl
use strict;
use warnings;
use utf8;
 
my @a = ();
my $j = min(@a);
 
if(defined $j){
   print("El mínim de @a és $j \n");
}else{
   print("La matriu és buida.\n");
}
 
my @b = (100,12,31);
my $k = min(@b);
 
if(defined $k){
  print("El mínim de @b és $k \n");
}else{
   print("La matriu és buida.\n");
}
 
sub min{
   my $m = shift;
   return undef unless defined $m;
   for (@_){
      $m = $_ if $m > $_;
   }
   return $m;
}