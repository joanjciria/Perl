#!/usr/bin/perl
#boto1.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Botó");
my $marc = $arrel->new_ttk__frame(-padding => "3 3 12 12", -width =>500, -height => 300);
$marc->configure(-padding => "5 7 10 12");       
$marc->configure(-relief => "raised");
$marc->g_grid(-column => 0, -row => 0, -sticky => "nwes");
#Estils:
Tkx::ttk__style_configure("Estil1.TLabel", -background => "red", -relief => "sunken",
                                   -font => "courier 14 bold", -foreground => "white");
Tkx::ttk__style_configure("Estil2.TLabel", -background => "green", -relief => "raised",
                                    -font => "{Calisto MT} 18 bold italic overstrike");
#Etiqueta:
my $etiqueta = $marc->new_ttk__label(-text => "Text de l'etiqueta", -style => "Estil1.TLabel");
$etiqueta->g_grid(-column => 0, -row => 0, -sticky => "w");
#Botó:
my $boto = $marc->new_ttk__button(-text => "Estil", -command => sub {canviaestil();});
$boto->g_grid(-column => 0, -row => 1, -sticky => "w");
#Acció:
sub canviaestil {
   $etiqueta->configure(-style => "Estil2.TLabel");                    
}
 
Tkx::MainLoop();
