#!/usr/bin/perl
#canvas3.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Canvas");
 
my $canvas = $arrel->new_tk__canvas(-width => 200, -height => 200, -background => 'yellow');
$canvas->g_grid(-column=>0, -row=>0, -sticky=>"nwes");
$arrel->g_grid_columnconfigure(25, -weight=>1);
$arrel->g_grid_rowconfigure(25, -weight=>1);
 
$canvas->create_line(25, 5, 100, 5);
$canvas->create_line(25, 15, 100, 15, -width => 2);
$canvas->create_line(25, 25, 100, 25, -width => 3);
$canvas->create_line(25, 35, 100, 35, -width => 4);
$canvas->create_line(25, 55, 100, 55, -width => 3, -dash => ".");
$canvas->create_line(25, 65, 100, 65, -width => 3, -dash => "-");
$canvas->create_line(25, 75, 100, 75, -width => 3, -dash => "-.");
$canvas->create_line(25, 85, 100, 85, -width => 3, -dash => "-..");
$canvas->create_line(25, 105, 100, 105, -width => 2, -arrow => "first");
$canvas->create_line(25, 115, 100, 115, -width => 2, -arrow => "last");
$canvas->create_line(25, 125, 100, 125, -width => 2, -arrow => "both");
$canvas->create_line(25, 145, 90, 145, -width => 15, -capstyle => "round");
 
Tkx::MainLoop();
