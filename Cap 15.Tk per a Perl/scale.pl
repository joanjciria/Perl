#!/usr/bin/perl
#scale.pl
use warnings;
use utf8;
use Tkx;
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Scale");
# etiqueta lligada a la mateixa variable que l'escala, de manera que
# s'actualitzen automàticament
$arrel->new_ttk__label(-textvariable => \$num)->g_grid(-column => 0, -row => 0, -sticky => "we");
 
# etiqueta que actualitzarem manualment mitjançant la devolució de trucada
# de l'ordre de l'escala
$manual = $arrel->new_ttk__label();
$manual->g_grid(-column => 0, -row => 1, -sticky => "we");
 
sub update_lbl {
   my ($val) = @_;
   $manual->configure(-text => "Scale x a ".$val);
}
 
$scale = $arrel->new_ttk__scale(-orient => 'horizontal', -length => 200, -from => 1.0, -to => 100.0, 
        -variable => \$num, -command => sub {($v) = @_; update_lbl($v);});
$scale->g_grid(-column => 0, -row => 2, -sticky => 'we');
$scale->set(20);
 
Tkx::MainLoop();
