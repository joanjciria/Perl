#!/usr/bin/perl
#peusametres1.pl
#use strict;
use warnings;
use utf8;
use Tkx;
 
Tkx::wm_title(".", "Peus a metres");
Tkx::ttk__frame(".c",  -padding => "3 3 12 12");
Tkx::grid( ".c", -column => 0, -row => 0, -sticky => "nwes");
Tkx::grid_columnconfigure( ".", 0, -weight => 1); 
Tkx::grid_rowconfigure(".", 0, -weight => 1);
 
Tkx::ttk__entry(".c.peus", -width => 7, -textvariable => \$peus);
Tkx::grid(".c.peus", -column => 2, -row => 1, -sticky => "we");
Tkx::ttk__label(".c.metres", -textvariable => \$metres);
Tkx::grid(".c.metres", -column => 2, -row => 2, -sticky => "we");
Tkx::ttk__button(".c.calc", -text => "Calcula", -command => sub {calcula();});
Tkx::grid(".c.calc", -column => 3, -row => 3, -sticky => "w");
 
Tkx::grid( Tkx::ttk__label(".c.flbl", -text => "peus"), -column => 3, -row => 1, -sticky => "w");
Tkx::grid( Tkx::ttk__label(".c.islbl", -text => "és equivalent a"), -column => 1, -row => 2, -sticky => "e");
Tkx::grid( Tkx::ttk__label(".c.mlbl", -text => "metres"), -column => 3, -row => 2, -sticky => "w");
 
foreach (Tkx::SplitList(Tkx::winfo_children(".c"))) {
    Tkx::grid_configure($_, -padx => 5, -pady => 5);
}
Tkx::focus(".c.peus");
Tkx::bind(".", "<Return>", sub {calcula();});
 
sub calcula {
   $metres = int(0.3048*$peus*10000.0+.5)/10000.0 || '';
}
 
Tkx::MainLoop();
