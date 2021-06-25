#!/usr/bin/perl
#label5.pl
use warnings;
use utf8;
use Tkx;
 
Tkx::wm_title(".", "Etiquetes");
Tkx::ttk__style_configure("Estil1.TLabel", -background => "red",
                 -relief => "sunken", -font => "courier 14 bold",
                 -foreground => “white”);
Tkx::ttk__style_configure("Estil2.TLabel", -background => "green", -relief => "raised",
                                    -font => "{Calisto MT} 18 bold italic overstrike");
 
Tkx::ttk__frame(".marc1",  -padding => "5 7 10 12",);
Tkx::grid( ".marc1", -column => 0, -row => 0, -sticky => "nwes");
Tkx::grid( Tkx::ttk__label(".marc1.etiq1", -text => "Línia1\nLínia2",
                           -style => "Estil1.TLabel"),
                           -column => 0, -row => 0, -sticky => "w");
 
Tkx::ttk__frame(".marc2",  -padding => "5 7 10 12",);
Tkx::grid( ".marc2", -column => 1, -row => 0, -sticky => "nwes");
Tkx::grid( Tkx::ttk__label(".marc2.etiq3", -text => "Linia1 Línia2",
                           -style => "Estil2.TLabel", -wraplength => 100),
                           -column => 0, -row => 0, -sticky => "w");
 
Tkx::MainLoop();
