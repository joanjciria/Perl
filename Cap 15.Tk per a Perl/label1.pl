#!/usr/bin/perl
#label1.pl
use warnings;
use utf8;
use Tkx;
 
Tkx::wm_title(".", "Etiquetes");
Tkx::ttk__style_configure("Estil1.TLabel", -background => "red",
                           -relief => "sunken");
Tkx::ttk__style_configure("Estil2.TLabel", -background => "green",
                           -relief => "raised");
 
Tkx::ttk__frame(".marc1",  -padding => "5 7 10 12",);
Tkx::grid( ".marc1", -column => 0, -row => 0, -sticky => "nwes");
Tkx::grid( Tkx::ttk__label(".marc1.etiq1", -text => "Etiqueta1",
          -style => "Estil1.TLabel"), -column => 0, -row => 0, -sticky => "w");
Tkx::grid( Tkx::ttk__label(".marc1.etiq2", -text => "Etiqueta2",
          -style => "Estil1.TLabel"), -column => 0, -row => 1, -sticky => "w");
 
Tkx::ttk__frame(".marc2",  -padding => "5 7 10 12",);
Tkx::grid( ".marc2", -column => 1, -row => 0, -sticky => "nwes");
Tkx::grid( Tkx::ttk__label(".marc2.etiq3", -text => "Etiqueta3",
           -style => "Estil2.TLabel"), -column => 0, -row => 0, -sticky => "w");
Tkx::grid( Tkx::ttk__label(".marc2.etiq4", -text => "Etiqueta4",
           -style => "Estil2.TLabel"), -column => 0, -row => 1, -sticky => "w");
 
Tkx::MainLoop();
