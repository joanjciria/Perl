#!/usr/bin/perl
#separator.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Separator");
 
my $marc = $arrel->new_ttk__frame();
$marc->g_grid(-column => 0, -row => 0);
 
Tkx::image_create_photo( "imgobj", -file => "perlicon.gif");
 
my $etiqueta1 = $marc->new_ttk__label(-image => "imgobj");
$etiqueta1->g_grid(-column => 0, -row => 0, -padx => 5, -pady => 5);
 
my $sep = $marc->new_ttk__separator(-orient => 'vertical');
$sep->g_grid(-column => 1, -row => 0, -sticky => 'nwse', -padx => 5, -pady => 5);
 
my $etiqueta2 = $marc->new_ttk__label(-image => "imgobj");
$etiqueta2->g_grid(-column => 2, -row => 0, -padx => 5, -pady => 5);
 
Tkx::MainLoop();
