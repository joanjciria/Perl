#!/usr/bin/perl
#hola.pl
use warnings;
use utf8;
use Tkx;
Tkx::grid( Tkx::ttk__button(".b", -text => "Hola, món" ) );
Tkx::MainLoop();
