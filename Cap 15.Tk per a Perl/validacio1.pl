#!/usr/bin/perl
#validacio1.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Validacio.pl");
my $marc = $arrel->new_ttk__frame(-padding => "3 3 12 12", -width =>600,
                                                           -height => 400);
$marc->configure(-padding => "5 7 10 12");       
$marc->configure(-relief => "raised");
$marc->g_grid(-column => 0, -row => 0, -sticky => "nwes");
 
Tkx::font_create("EstilFont1", -family => "Helvetica", -size => 12,
                                                      -weight => "bold");
Tkx::ttk__style_configure("EstilLab1.TLabel", -background => "#f5f4df",
    -relief => "raised", -font => "courier 12 bold", -foreground => "#757004");
 
my $numero;
 
my $etiq_valida = $marc->new_ttk__label(-text => "Nombre enter de 5 dígits:",
                                        -style => "EstilLab1.TLabel");
$etiq_valida->g_grid(-column => 0, -row => 0, -sticky => "nsew");
my $Ent_valida = $marc->new_ttk__entry(-font => "EstilFont1",
         -foreground => "#2773f5", -textvariable => \$numero,
         -validate => 'key', -validatecommand => [\&check_num, Tkx::Ev('%P')]);
$Ent_valida->g_grid(-column => 1, -row => 0, -sticky => "w");
 
sub check_num {
   my ($newval) = @_;
   return $newval =~ /^[0-9]*$/ && length($newval) <= 5 ? 1 : 0;
}
 
Tkx::MainLoop();
