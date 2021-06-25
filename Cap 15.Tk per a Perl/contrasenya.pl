#!/usr/bin/perl
#contrasenya.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Botó");
my $marc = $arrel->new_ttk__frame(-padding => "3 3 12 12", -width =>600,
                                                           -height => 400);
$marc->configure(-padding => "5 7 10 12");       
$marc->configure(-relief => "raised");
$marc->g_grid(-column => 0, -row => 0, -sticky => "nwes");
 
Tkx::font_create("EstilFont1", -family => "Helvetica", -size => 12,
                                                       -weight => "bold");
Tkx::ttk__style_configure("EstilLab1.TLabel", -background => "#f5f4df", 
      -relief => "raised",-font => "courier 14 bold", -foreground => "#757004");
 
my $contrasenya;
 
my $etiq_contrasenya = $marc->new_ttk__label(-text => "Nom:",
                                             -style => "EstilLab1.TLabel");
$etiq_contrasenya->g_grid(-column => 0, -row => 0, -sticky => "nsew");
my $Ent_contrasenya = $marc->new_ttk__entry(-font => "EstilFont1",
        -foreground => "#2773f5", -textvariable => \$contrasenya, -show => "*");
$Ent_contrasenya->g_grid(-column => 1, -row => 0, -sticky => "w");
 
Tkx::MainLoop();
