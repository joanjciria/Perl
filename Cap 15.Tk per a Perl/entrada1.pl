#!/usr/bin/perl
#entrada1.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Botó");
my $marc = $arrel->new_ttk__frame(-padding => "3 3 12 12",
                                   -width =>600, -height => 400);
$marc->configure(-padding => "5 7 10 12");       
$marc->configure(-relief => "raised");
$marc->g_grid(-column => 0, -row => 0, -sticky => "nwes");
 
Tkx::font_create("EstilFont1", -family => "Helvetica",
                               -size => 12, -weight => "bold");
Tkx::ttk__style_configure("EstilBot1.TButton", -font => "helvetica 18",
                          -foreground => "#056634", -padding => 2);
Tkx::ttk__style_configure("EstilLab1.TLabel", -background => "#f5f4df",
     -relief => "raised", -font => "courier 14 bold", -foreground => "#757004");
 
my $nom;
my $cognom;
my $nomcomplet;
 
my $etiq_nom = $marc->new_ttk__label(-text => "Nom:",
                                     -style => "EstilLab1.TLabel");
$etiq_nom->g_grid(-column => 0, -row => 0, -sticky => "nsew");
 
my $Ent_nom = $marc->new_ttk__entry(-font => "EstilFont1",
                                    -foreground => "#2773f5");
$Ent_nom->g_grid(-column => 1, -row => 0, -sticky => "w");
 
my $etiq_cognom = $marc->new_ttk__label(-text => "Cogom:",
                                        -style => "EstilLab1.TLabel");
$etiq_cognom->g_grid(-column => 0, -row => 1, -sticky => "nsew");
 
my $Ent_cognom = $marc->new_ttk__entry(-font => "EstilFont1",
                                       -foreground => "#2773f5");
$Ent_cognom->g_grid(-column => 1, -row => 1, -sticky => "w");
 
my $etiq_nomcomplet = $marc->new_ttk__label(-text => "Nom comlpet:",
                                            -style => "EstilLab1.TLabel");
$etiq_nomcomplet->g_grid(-column => 0, -row => 2, -sticky => "nsew");
my $Ent_nomcomplet = $marc->new_ttk__entry(-font => "EstilFont1",
                                -foreground => "#f52765", -state => "disabled");
 
$Ent_nomcomplet->g_grid(-column => 1, -row => 2, -sticky => "w");
 
my $boto_nom = $marc->new_ttk__button(-text => "Nom?",
                -style => "EstilBot1.TButton", -command => sub {escriunom();});
$boto_nom->g_grid(-column => 0, -row => 3, -sticky => "w");
 
my $boto_net = $marc->new_ttk__button(-text => "Neteja",
                 -style => "EstilBot1.TButton", -command => sub {esborrar();});
$boto_net->g_grid(-column => 1, -row => 3, -sticky => "nesw");
 
sub escriunom {
  $Ent_nomcomplet -> configure(-state => "normal");
  $Ent_nomcomplet->insert(0,"Et dius ".$Ent_nom->get." ".$Ent_cognom->get);
}
 
sub esborrar {
   $Ent_nom->delete(0, "end");  
   $Ent_cognom->delete(0, "end");  
   $Ent_nomcomplet->delete(0, "end"); 
   $Ent_nomcomplet -> configure(-state => "disabled");   
}
 
Tkx::MainLoop();
