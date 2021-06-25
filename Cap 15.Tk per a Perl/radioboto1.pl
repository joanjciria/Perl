#!/usr/bin/perl
#radioboto1.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Radio botó");
my $marc = $arrel->new_ttk__frame(-padding => "3 3 12 12", -width =>500,
                                  -height => 300);
$marc->configure(-padding => "5 7 10 12");       
$marc->configure(-relief => "raised");
$marc->g_grid(-column => 0, -row => 0, -sticky => "nwes");
 
#Estils:
Tkx::ttk__style_configure("Estil1.TLabel", -background => "red",
       -relief => "sunken", -font => "courier 14 bold", -foreground => "white");
Tkx::ttk__style_configure("Estil2.TLabel", -background => "green",
       -relief => "raised",-font => "{Calisto MT} 18 bold italic overstrike");
#Etiqueta:
my $etiqueta = $marc->new_ttk__label(-text => "On vols anar de vacances?",
                                      -style => "Estil1.TLabel");
$etiqueta->g_grid(-column => 0, -row => 0, -sticky => "w");
 
#RadioBotons:
my $resultsVar;
my $radioplatja = $marc->new_ttk__radiobutton(-text => "A la platja",
                   -variable => \$resultsVar, -value => "A la platja",
                   -command => \&vacances);
$radioplatja->g_grid(-column => 0, -row => 1, -sticky => "w");
 
my $radiomontanya = $marc->new_ttk__radiobutton(-text => "A la muntanya",
                   -variable => \$resultsVar, -value => "A la muntanya",
                   -command => \&vacances);
$radiomontanya->g_grid(-column => 0, -row => 2, -sticky => "w");
 
my $radiocultural = $marc->new_ttk__radiobutton(-text => "Vacances culturals",
                   -variable => \$resultsVar,  -value => "Vacances culturals",
                   -command => \&vacances);
$radiocultural->g_grid(-column => 0, -row => 3, -sticky => "w");
 
#Acció:
sub vacances {
$etiqueta->configure(-text => $resultsVar);
if ($resultsVar eq "A la platja") {
    $etiqueta->configure(-background => "#f0c95d");}
    elsif ($resultsVar eq "A la montanya")
    {$etiqueta->configure(-background => "#b2ed85");}
    elsif ($resultsVar eq "Vacances culturals")
   {$etiqueta->configure(-background => "#98e7ed");}
}
Tkx::MainLoop();
