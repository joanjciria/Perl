#!/usr/bin/perl
#matrius17.pl
use strict;
use warnings;
use utf8;
my $ma; 
my @piladepapers = ("una carta", "un diari", "una factura", "un bloc de notes");
print "Això és el que hi ha a l'escriptori: ", join(", ", @piladepapers), "\n";
print "Agafes alguna cosa de la part superior de la pila.\n"; 
$ma = pop @piladepapers; 
print "Ara tens $ma a la teva ma.\n"; 
print "Tu retires $ma, i reculls una altra cosa.\n"; 
$ma = pop @piladepapers; 
print "Retires $ma.\n"; 
print "A l'escriptori queda: @piladepapers\n"; 
print "Agafes el següent i el llences.\n"; 
pop @piladepapers; 
print "Poses $ma un altre cop a la pila.\n"; 
push @piladepapers, $ma; 
print "També poses un fulletó i un extracte bancari a la pila.\n";
push @piladepapers, "un fulletó", "un extracte bancari "; 
print "Això és el que hi ha a l'escriptori: ", join(", ", @piladepapers), "\n";