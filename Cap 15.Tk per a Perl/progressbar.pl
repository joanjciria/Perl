#!/usr/bin/perl
#progressbar.pl
use warnings;
use utf8;
use Tkx;
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Progressbar");
 
$arrel->new_ttk__progressbar(
                -length => 200,
                -maximum => 100, 
                -variable => \$val)
                ->g_grid(-column => 0, -row => 0, -sticky => "we", -pady => 10, -padx => 10);
                
$arrel->new_ttk__button(-text => 'Progressa!', -command=> sub {
            $val = $val+10;
            } )->g_grid(-column => 0, -row => 1, -sticky => "we", -pady => 10, -padx => 10);
 
$val = 0;
$etiq = $arrel->new_ttk__label(-textvariable => \$val);
$etiq->g_grid(-column => 0, -row => 2, -sticky => "we", -pady => 10, -padx => 10);
 
Tkx::MainLoop();
