#!/usr/bin/perl
#frame2.pl
use warnings;
use utf8;
use Tkx;
 
Tkx::wm_title(".", "Frames");
Tkx::ttk__style_configure("Estil1.TFrame", -padding => "5 7 10 12",
                           -background => "red", -relief => "sunken");
Tkx::ttk__style_configure("Estil2.TFrame", -padding => "5 7 10 12",
                           -background => "green", -relief => "raised");
 
Tkx::ttk__frame(".marc1",  -padding => "3 3 12 12", -style => "Estil1.TFrame");
Tkx::grid( ".marc1", -column => 0, -row => 0, -sticky => "nwes");
Tkx::grid( Tkx::ttk__label(".marc1.etiq1", -text => "Etiqueta1"),
                            -column => 0, -row => 0, -sticky => "w");
Tkx::grid( Tkx::ttk__label(".marc1.etiq2", -text => "Etiqueta2"), 
                            -column => 0, -row => 1, -sticky => "w");
 
Tkx::ttk__frame(".marc2",  -padding => "3 3 12 12", -style => "Estil2.TFrame");
Tkx::grid( ".marc2", -column => 1, -row => 0, -sticky => "nwes");
Tkx::grid( Tkx::ttk__label(".marc2.etiq3", -text => "Etiqueta3"),
                             -column => 0, -row => 0, -sticky => "w");
Tkx::grid( Tkx::ttk__label(".marc2.etiq4", -text => "Etiqueta4"),
                             -column => 0, -row => 1, -sticky => "w");
 
Tkx::MainLoop();
