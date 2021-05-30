#!/usr/bin/perl
#acudits.pl
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
print "Si us plau, entreu un número entre 1 i 4: "; 
my $seleccio = <STDIN>; 
$seleccio -= 1; 
print "Quants $questions[$seleccio] "; 
print "es necessiten per canviar una bombeta?\n\n"; 
print $respostes[$seleccio], "\n";
