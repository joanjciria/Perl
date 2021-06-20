#!/usr/bin/perl
#moduls1.pl
use strict;
use warnings;
use utf8;
 
sub BEGIN { 
   push @INC, "moduls"; 
} 
 
use FitxerRegistre;
 
FitxerRegistre::obri("logtest.log");
 
FitxerRegistre::log(1,"Això és un missatge de registre.");
 
FitxerRegistre::tanca();
