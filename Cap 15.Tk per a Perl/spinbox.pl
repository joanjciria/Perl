#!/usr/bin/perl
#spinbox.pl
use warnings;
use utf8;
use Tkx;
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Spinbox");
 
$scale = $arrel->new_ttk__spinbox( -from => 1, -to => 100, 
        -textvariable => \$num, -command => sub {($v) = @_; update_lbl($v);});
$scale->g_grid(-column => 0, -row => 0, -sticky => 'we');
$scale->set(20);
 
$arrel->new_ttk__label(-textvariable => \$num)->g_grid(-column => 0, -row => 1, -sticky => "we");
 
sub update_lbl {
   my ($val) = @_;
   
}
 
Tkx::MainLoop();
