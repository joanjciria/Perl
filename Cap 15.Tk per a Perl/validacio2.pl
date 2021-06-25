#!/usr/bin/perl
#validacio2.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Validacio.pl");
my $marc = $arrel->new_ttk__frame(-padding => "3 3 12 12", -width =>600, -height => 400);
$marc->configure(-padding => "5 7 10 12");       
$marc->configure(-relief => "raised");
$marc->g_grid(-column => 0, -row => 0, -sticky => "nwes");
 
Tkx::font_create("EstilFont1", -family => "Helvetica", -size => 12, -weight => "bold");
Tkx::ttk__style_configure("EstilLab1.TLabel", -background => "#f5f4df", -relief => "raised",
                                   -font => "courier 12 bold", -foreground => "#757004");
 
my $missatge_error = "";
my $format_missatge = "El codi ha de ser ##### or #####-####";
my $cod_post;
 
my $etiq_nom = $marc->new_ttk__label(-text => "Nom:",
                                     -style => "EstilLab1.TLabel");
$etiq_nom->g_grid(-column => 0, -row => 0, -sticky => "nsew");
 
my $Ent_nom = $marc->new_ttk__entry(-font => "EstilFont1",
                                    -foreground => "#2773f5");
$Ent_nom->g_grid(-column => 1, -row => 0, -sticky => "w");
 
my $etiq_codi = $marc->new_ttk__label(-text => "Codi:",
                                      -style => "EstilLab1.TLabel");
$etiq_codi->g_grid(-column => 0, -row => 1, -sticky => "nsew");
 
my $Ent_codi = $marc->new_ttk__entry(-font => "EstilFont1",
    -foreground => "#2773f5", -textvariable => \$cod_post, -validate => 'all',
    -validatecommand => [\&check_cod_post, Tkx::Ev('%P', '%V')]);
$Ent_codi->g_grid(-column => 1, -row => 1, -sticky => "w");
 
my $boto = $marc->new_ttk__button(-text => "Processa", -state => "disabled");
$boto->g_grid(-column => 2, -row => 1, -sticky => "w");
 
my $etiq_missatge = $marc->new_ttk__label(-text => "Nom:", 
                  -font => 'TkSmallCaptionFont', -foreground => 'red',
                  -textvariable => \$missatge_error );
$etiq_missatge->g_grid(-column => 1, -row => 2, -sticky => "nsew");
 
sub check_cod_post {
   my ($newval,$op) = @_;
   $missatge_error = "";
   $valid = $newval =~ /^[0-9]{5}(\-[0-9]{4})?$/;
   $boto->state($valid ? "!disabled" : "disabled");
   if ($op eq "key") {
      $ok_so_far = $newval =~ /^[0-9\-]*$/ && length($newval) <= 10;
      $missatge_error = $format_missatge if not $ok_so_far;
      return $ok_so_far ? 1 : 0;        
   } elsif ($op eq "focusout") {
      $missatge_error = $format_missatge if not $valid;
   }
   return $valid ? 1 : 0;
}
 
Tkx::MainLoop();
