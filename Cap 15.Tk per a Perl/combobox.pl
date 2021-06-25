#!/usr/bin/perl
#combobox.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Combobox.pl");
my $marc = $arrel->new_ttk__frame(-padding => "3 3 12 12", -width =>600,
                                  -height => 400);
$marc->configure(-padding => "5 7 10 12");       
$marc->configure(-relief => "raised");
$marc->g_grid(-column => 0, -row => 0, -sticky => "nwes");
 
Tkx::font_create("EstilFont1", -family => "Helvetica", -size => 12,
                                                       -weight => "bold");
Tkx::ttk__style_configure("EstilLab1.TLabel", -background => "#f5f4df",
    -relief => "raised", -font => "courier 12 bold", -foreground => "#757004");
 
my $pais;
my $textent;
 
my $etiq_pais = $marc->new_ttk__label(-text => "Llista països:",
                                      -style => "EstilLab1.TLabel");
$etiq_pais->g_grid(-column => 1, -row =>1 , -sticky => "nsew");
 
my $Combo_pais = $marc->new_ttk__combobox(-font => "EstilFont1",
                 -foreground => "#2773f5", -textvariable => \$pais,
                 -values => "Irlanda Canadà Noruega");
$Combo_pais->g_grid(-column => 2, -row => 1, -sticky => "w");
 
my $etiq_selecc = $marc->new_ttk__label(-text => "País seleccionat:",
                                        -style => "EstilLab1.TLabel");
$etiq_selecc->g_grid(-column => 1, -row => 2, -sticky => "nsew");
 
my $etiq_textent = $marc->new_ttk__label(-text => "",
                  -font => 'courier 10 bold', -foreground => 'red');
$etiq_textent->g_grid(-column => 2, -row => 2, -sticky => "nsew");



my $boto_pais = $marc->new_ttk__button(-text => "País", -state => "enabled",
               -command => sub {seleccionar();});
$boto_pais->g_grid(-column => 1, -row => 4, -sticky => "nsew");
 
my $boto_neteja = $marc->new_ttk__button(-text => "Neteja",
                 -state => "enabled", -command => sub {netejar();});
$boto_neteja->g_grid(-column => 2, -row => 4, -sticky => "nsew");
 
sub seleccionar {
       $etiq_textent->configure(-text =>"País seleccionat ".$Combo_pais->get);
}
 
sub netejar {
   $etiq_textent->configure(-text => "");   
 
}
 
Tkx::MainLoop();
