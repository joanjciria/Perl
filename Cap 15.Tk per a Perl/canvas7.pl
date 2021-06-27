#!/usr/bin/perl
#canvas7.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Canvas");
 
my $canvas = $arrel->new_tk__canvas(-width => 400, -height => 250, -background => 'yellow');
$canvas->g_grid(-column=>0, -row=>0, -sticky=>"nwes");
$arrel->g_grid_columnconfigure(0, -weight=>1);
$arrel->g_grid_rowconfigure(0, -weight=>1);
 
$canvas->g_bind("<1>", [sub {my ($x,$y) = @_; $lastx=$x; $lasty=$y}, Tkx::Ev("%x","%y")]);
$canvas->g_bind("<B1-Motion>", [sub {my ($x,$y) = @_; addLine($x,$y)}, Tkx::Ev("%x","%y")]);
 
$id = $canvas->create_rectangle(10, 10, 30, 30, -fill => "red", -tags => "palette palettered");
$canvas->bind($id, "<1>", sub {setColor("red")});
 
$id = $canvas->create_rectangle(10, 50, 30, 70, -fill => "blue", -tags => "palette paletteblue");
$canvas->bind($id, "<1>", sub {setColor("blue")});
 
$id = $canvas->create_rectangle(10, 90, 30, 110, -fill => "black", -tags => "palette paletteblack paletteSelected");
$canvas->bind($id, "<1>", sub {setColor("black")});
 
sub setColor {
    my ($newcolor) = @_;
    $color = $newcolor;
    $canvas->dtag_all("paletteSelected");
    $canvas->itemconfigure("palette", -outline => "white");
    $canvas->addtag("paletteSelected", withtag => "palette".$color);
    $canvas->itemconfigure("paletteSelected", -outline => "#999999");
}
setColor "black";
$canvas->itemconfigure("palette", -width => 5);
 
sub addLine {
    my ($x,$y) = @_;
    $canvas->create_line($lastx,$lasty,$x,$y, -fill => $color, -width => 3);
    $lastx = $x; $lasty = $y;
}
 
Tkx::MainLoop();
