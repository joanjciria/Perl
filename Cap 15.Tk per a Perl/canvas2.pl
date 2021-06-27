#!/usr/bin/perl
#canvas2.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Canvas");
 
my $canvas = $arrel->new_tk__canvas(-width => 400, -height => 250, -background => 'yellow');
$canvas->g_grid(-column=>0, -row=>0, -sticky=>"nwes");
$arrel->g_grid_columnconfigure(0, -weight=>1);
$arrel->g_grid_rowconfigure(0, -weight=>1);
 
$canvas->g_bind("<1>", [
         sub {my ($x,$y) = @_; $lastx=$x; $lasty=$y}, Tkx::Ev("%x","%y")
         ]);
$canvas->g_bind("<B1-Motion>", [
           sub {my ($x,$y) = @_; addLine($x,$y)}, Tkx::Ev("%x","%y")
           ]);
 
sub addLine {
    my ($x,$y) = @_;
    $canvas->create_line($lastx,$lasty,$x,$y);
    $lastx = $x; $lasty = $y;
}
 
Tkx::MainLoop();
