#!/usr/bin/perl
#canvas8.pl
use warnings;
use utf8;
use Tkx;
$mw = Tkx::widget->new(".");
 
$canvas = $mw->new_tk__canvas(-scrollregion => "0 0 1000 1000");
$canvas->g_grid(-column=>0, -row=>0, -sticky=>"nwes");
$mw->g_grid_columnconfigure(0, -weight=>1);
$mw->g_grid_rowconfigure(0, -weight=>1);
 
$hscroll = $mw->new_ttk__scrollbar(-orient => "horizontal", -command => [$canvas, "xview"]);
$vscroll = $mw->new_ttk__scrollbar(-orient => "vertical", -command => [$canvas, "yview"]);
$hscroll->g_grid(-column => 0, -row => 1, -sticky => "we");
$vscroll->g_grid(-column => 1, -row => 0, -sticky => "ns");
$canvas->configure(-yscrollcommand => [$vscroll, "set"], -xscrollcommand => [$hscroll, "set"]);
 
$canvas->g_bind("<1>", [sub {my ($x,$y) = @_; $lastx=$canvas->canvasx($x); $lasty=$canvas->canvasy($y)}, Tkx::Ev("%x","%y")]);
$canvas->g_bind("<B1-Motion>", [sub {my ($x,$y) = @_; addLine($canvas->canvasx($x),$canvas->canvasy($y))}, Tkx::Ev("%x","%y")]);
$canvas->g_bind("<B1-ButtonRelease>", sub {doneStroke();});
 
$id = $canvas->create_rectangle(10, 10, 30, 30, -fill => "red", -tags => "palette palettered");
$canvas->bind($id, "<1>", sub {setColor("red")});
 
$id = $canvas->create_rectangle(10, 35, 30, 55, -fill => "blue", -tags => "palette paletteblue");
$canvas->bind($id, "<1>", sub {setColor("blue")});
 
$id = $canvas->create_rectangle(10, 60, 30, 80, -fill => "black", -tags => "palette paletteblack paletteSelected");
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
    $canvas->create_line($lastx,$lasty,$x,$y, -fill => $color, -width => 5, -tags => "currentline");
    $lastx = $x; $lasty = $y;
}
 
sub doneStroke {
    $canvas->itemconfigure("currentline", -width => 1);
}
Tkx::MainLoop();
