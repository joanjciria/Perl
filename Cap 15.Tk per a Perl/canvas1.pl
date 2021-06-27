#!/usr/bin/perl
#canvas1.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Canvas");
 
my $canvas = $arrel->new_tk__canvas(-width => 300, -height => 150, -background => 'yellow');
$canvas->g_grid(-sticky => "we", -pady => 5, -padx => 5);
 
$canvas->create_line(10,5,200,50);
 
Tkx::MainLoop();
