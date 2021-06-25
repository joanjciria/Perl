#!/usr/bin/perl
#binding.pl
#use strict;
use warnings;
use utf8;
use Tkx;
 
my $mw = Tkx::widget->new(".");
(my $l = $mw->new_ttk__label(-text => "Començant..."))->g_grid;
$l->g_bind("<Enter>", sub {$l->configure(-text => "Ratolí mogut dintre")});
$l->g_bind("<Leave>", sub {$l->configure(-text => "Ratolí mogut fora")});
$l->g_bind("<ButtonPress-1>",
                sub {$l->configure(text => "Botó esquerre clicat")});
$l->g_bind("<3>",  sub {$l->configure(-text => "Botó dret clicat")});
$l->g_bind("<Double-1>", sub {$l->configure(-text => "Doble clicat")});
$l->g_bind("<B3-Motion>", [sub { my($x,$y) = @_;
$l->configure(-text => "botó dret arrossegat a $x $y")
                       }, Tkx::Ev("%x", "%y")]);
Tkx::MainLoop();
