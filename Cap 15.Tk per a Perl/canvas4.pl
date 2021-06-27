#!/usr/bin/perl
#canvas4.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Canvas");
 
my $canvas = $arrel->new_tk__canvas(-width => 200, -height => 200, -background => 'yellow');
$canvas->g_grid(-column=>0, -row=>0, -sticky=>"nwes");
$arrel->g_grid_columnconfigure(25, -weight=>1);
$arrel->g_grid_rowconfigure(25, -weight=>1);
 
$canvas->create_rectangle(10, 10, 150, 150, -fill => "green", -outline => "blue");
 
Tkx::MainLoop();
