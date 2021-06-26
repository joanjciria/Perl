#!/usr/bin/perl
#menu.pl
use warnings;
use utf8;
use Tkx;
 
Tkx::option_add("*tearOff", 0);
 
my $mw = Tkx::widget->new(".");
$mw->g_wm_title("Menú");
my $menu = $mw->new_menu;
$mw->configure(-menu => $menu);
my $fitxer = $menu->new_menu;
 
my $edita = $menu->new_menu;
 
$menu->add_cascade(-menu => $fitxer, -label => "Fitxer");
$menu->add_cascade(-menu => $edita, -label => "Edita");
 
$fitxer->add_command(-label => "Nou", -command => sub {nouFitxer()});
$fitxer->add_command(-label => "Obre...", -command => sub {obriFitxer()});
$fitxer->add_command(-label => "Tanca", -command => sub {tancaFitxer()});
$edita->add_command(-label => "Còpia", -command => sub {copiaSel()});
$edita->add_command(-label => "Enganxa...", -command => sub {enganxaSel()});
$edita->add_command(-label => "Talla", -command => sub {tallaSel()});
 
Tkx::MainLoop();
