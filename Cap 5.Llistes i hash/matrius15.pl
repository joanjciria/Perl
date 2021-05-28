#!/usr/bin/perl
#matrius15.pl
use strict;
use warnings;
use utf8;
my @questions = qw(abogats programadors psiquiatres guionistes); 
my @respostes = ( 
"Quants en podeu pagar?", 
"Cap; és un problema de hardware.",
"Només un, però la bombeta ha de voler canviar.",
"Dos; un per enroscar-la gairebé tota i l'altre per donar- li un gir sorprenent al final."
); 
for (0..$#questions) { 
print "Quants $questions[$_] "; 
print "es necessiten per canviar una bombeta?\n"; 
print $respostes[$_], "\n\n"; 