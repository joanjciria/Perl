#!/usr/bin/perl
#grid2.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("grid2.pl");
Tkx::ttk__style_configure(
        "Estilmarc.TFrame",
        -background => "red"
        );
my $marc = $arrel->new_ttk__frame(
                    -width => 600,
                    -height => 300,
                    -style => "Estilmarc.TFrame"
                    );
Tkx::font_create(
     "EstilFont1",
     -family => "Helvetica",
     -size => 12, -weight => "bold"
     );
Tkx::ttk__style_configure(
        "EstilLab1.TLabel",
        -background => "#f5f4df", -relief => "raised",
        -font => "courier 12 bold",
        -foreground => "#757004"
        );
 
Tkx::image_create_photo(
               "imgobj",
               -file => "perlicon.gif"
               );
 
my $etq_un = $marc->new_ttk__label(
                 -image => "imgobj"
                 );
my $etq_dos = $marc->new_ttk__label(
                     -text => "Dos",
                     -font=> "EstilFont1",
                     -style => "EstilLab1.TLabel" 
                     );
my $etq_tres= $marc->new_ttk__label(
                     -text => "Tres",
                     -font=> "EstilFont1",
                     -style => "EstilLab1.TLabel" 
                     );
my $etq_quatre= $marc->new_ttk__label(
                     -text => "Quatre",
                     -font=> "EstilFont1",
                     -style => "EstilLab1.TLabel"
                     );
 
$marc->g_grid(-column => 0, -row => 0);
$etq_un->g_grid(-column => 0, -row => 0);
$etq_dos->g_grid(-column => 1, -row => 0);
$etq_tres->g_grid(-column => 0, -row => 1);
$etq_quatre->g_grid(-column => 1, -row => 1);
 
Tkx::MainLoop();
