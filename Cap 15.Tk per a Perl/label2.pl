#!/usr/bin/perl
#label2.pl
use warnings;
use utf8;
use Tkx;
 Tkx::wm_title(".", "Etiquetes");
Tkx::ttk__style_configure("Estil1.TLabel", -background => "red", -relief => "sunken");
Tkx::ttk__frame(".marc1",  -padding => "5 7 10 12",);
Tkx::grid( ".marc1", -column => 0, -row => 0, -sticky => "nwes");
Tkx::image_create_photo( "imgobj", -file => "perlicon.gif");
Tkx::grid( Tkx::ttk__label(".marc1.etiq1",
                           -style => "Estil1.TLabel", -image => "imgobj"),
                           -column => 0, -row => 0, -sticky => "w");
Tkx::MainLoop();
