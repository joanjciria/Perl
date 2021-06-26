#!/usr/bin/perl
#labelframe.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Separator");
 
my $lf1 = $arrel->new_ttk__labelframe(-text => "Label Frame 1");
$lf1->g_grid(-column => 1, -row => 1, -sticky => 'nsew',-pady => 15, -padx => 15);
 
my $lf2 = $arrel->new_ttk__labelframe(-text => "Label Frame 2");
$lf2->g_grid(-column => 2, -row => 1, -sticky => 'nsew',-pady => 15, -padx => 15);
 
my $etiqueta1 = $lf1->new_ttk__label(-text => "Text etiqueta 1");
$etiqueta1->g_grid(-column => 1, -row => 1, -sticky => 'we', -padx => 5, -pady => 5);
 
my $sep1 = $lf1->new_ttk__separator(-orient => 'horizontal');
$sep1->g_grid(-column => 1, -row => 2, -sticky => 'nwse', -padx => 5, -pady => 5);
 
my $etiqueta2 = $lf1->new_ttk__label(-text => "Text etiqueta 2");
$etiqueta2->g_grid(-column => 1, -row => 3, -sticky => 'we', -padx => 5, -pady => 5);
 
my $etiqueta3 = $lf2->new_ttk__label(-text => "Text etiqueta 3");
$etiqueta3->g_grid(-column => 1, -row => 1, -sticky => 'we', -padx => 5, -pady => 5);
 
my $sep2 = $lf2->new_ttk__separator(-orient => 'horizontal');
$sep2->g_grid(-column => 1, -row => 2, -sticky => 'nwse', -padx => 5, -pady => 5);
 
my $etiqueta4 = $lf2->new_ttk__label(-text => "Text etiqueta 4");
$etiqueta4->g_grid(-column => 1, -row => 3, -sticky => 'we', -padx => 5, -pady => 5);
 
Tkx::MainLoop();
