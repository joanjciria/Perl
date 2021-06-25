#!/usr/bin/perl
#frame1.pl
use warnings;
use utf8;
use Tkx;
 
my $mw = Tkx::widget->new(".");
$mw->g_wm_title("Frames");
my $frm = $mw->new_ttk__frame(-padding => "3 3 12 12",
                              -width =>300, -height => 200);
$frm->g_grid(-column => 0, -row => 0, -sticky => "nwes");
 
$frm->configure(-padding => "5 7 10 12");       
$frm->configure(-relief => "raised");
$frm->new_ttk__label(-text => "ETIQUETA1")->g_grid(-column => 0,
                                                   -row => 0, -sticky => "w");
$frm->new_ttk__label(-text => "ETIQUETA2")->g_grid(-column => 0, 
                                                   -row => 1, -sticky => "w");
 
my $frm2 = $mw->new_ttk__frame(-padding => "3 3 12 12", -width =>300,
                                                      -height => 200);
$frm2->g_grid(-column => 1, -row => 0, -sticky => "nwes");
 
$frm2->configure(-padding => "5 7 10 12");       
$frm2->configure(-relief => "sunken");
$frm2->new_ttk__label(-text => "ETIQUETA3")->g_grid(-column => 0, -row => 0, -sticky => "w");
$frm2->new_ttk__label(-text => "ETIQUETA4")->g_grid(-column => 0, -row => 1, -sticky => "w");
 
Tkx::MainLoop();
