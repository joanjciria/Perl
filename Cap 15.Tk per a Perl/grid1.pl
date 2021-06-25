#!/usr/bin/perl
#grid1.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("grid1.pl");
my $marc1 = $arrel->new_ttk__frame(-borderwidth => 5, -relief => "sunken");
my $marc2 = $marc1->new_ttk__frame( );
    
 
Tkx::font_create("EstilFont1", -family => "Helvetica", -size => 12,
                                                       -weight => "bold");
Tkx::ttk__style_configure("EstilLab1.TLabel", -background => "#f5f4df",
    -relief => "raised", -font => "courier 12 bold", -foreground => "#757004");
 
my $etq_hola = $marc2->new_ttk__label(-text => "Hola a tothom, com va?!",
                                      -style=> "EstilLab1.TLabel");
my $etq_nom = $marc1->new_ttk__label(-text => "Nom", -font=> "EstilFont1");
my $ent_nom = $marc1->new_ttk__entry;
$opcio_un = 1; $opcio_dos = 0; $opcio_tres = 0;
my $un = $marc1->new_ttk__checkbutton(-text => "Bé",
                                      -variable => \$opcio_un, -onvalue => 1); 
my $dos = $marc1->new_ttk__checkbutton(-text => "Regular",
                                       -variable => \$opcio_dos, -onvalue => 1);
my $tres = $marc1->new_ttk__checkbutton(-text => "Malament",
                                      -variable => \$opcio_tres, -onvalue => 1);
my $ok = $marc1->new_ttk__button(-text => "D'acord");
my $cancel = $marc1->new_ttk__button(-text => "Cancel•la");
 
$marc1->g_grid(-column => 0, -row => 0-sticky => "nwes");
$marc2->g_grid(-column => 0, -row => 0, -columnspan => 3, -rowspan => 2);
$etq_hola->g_grid(-column => 0, -row => 0, -sticky => "nwes");
$etq_nom->g_grid(-column => 3, -row => 0, -columnspan => 2);
$ent_nom->g_grid(-column => 3, -row => 1, -columnspan => 2);
$un->g_grid(-column => 0, -row => 2);
$dos->g_grid(-column => 1, -row => 2);
$tres->g_grid(-column => 2, -row => 2);
$ok->g_grid(-column => 3, -row => 2);
$cancel->g_grid(-column => 4, -row => 2);
 
Tkx::MainLoop();
