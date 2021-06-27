#!/usr/bin/perl
#canvas5.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Canvas");
 
my $canvas = $arrel->new_tk__canvas(-width => 300, -height => 150, -background => 'yellow');
$canvas->g_grid(-column=>0, -row=>0, -sticky=>"nwes");
 
my $b = $canvas->new_ttk__button(-text => "Explota!");
$canvas->create_window( 10, 10, -anchor => "nw", -window => $b);
 
my $e = $canvas->new_ttk__entry(-foreground => "#2773f5");
$canvas->create_window( 10, 50, -anchor => "nw", -window => $e);
 
my $c = $canvas->new_ttk__combobox(-values => "Irlanda Canadà Noruega");
$canvas->create_window( 150, 10, -anchor => "nw", -window => $c);
 
Tkx::MainLoop();
