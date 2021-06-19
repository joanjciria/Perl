#!/usr/bin/perl
#subrutines1.pl 
use strict;
use warnings;
use utf8;
sub mostra_missatge{
     print "Hola, aquesta és la primera subrutina\n";
}
&mostra_missatge;
mostra_missatge();
