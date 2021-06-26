usr/bin/perl
#dialegs.pl
use warnings;
use utf8;
use Tkx;
 
my $mw = Tkx::widget->new(".");
$mw->g_wm_title("Diàlegs");
 
sub mostra_missatge {
    Tkx::tk___messageBox(-message => "Que tinguis un bon dia");
}
 
my $boto = $mw->new_ttk__button(-text => "Mostra missatge", 
                                -command => sub {mostra_missatge();});
$boto->g_grid(-column => 0, -row => 0,-padx => 10, -pady => 10);
 
Tkx::MainLoop();
