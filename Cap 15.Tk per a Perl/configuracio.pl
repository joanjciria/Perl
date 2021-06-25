#!/usr/bin/perl
#configuracio.pl
use warnings;
use utf8;
use Tkx;
print $mw = Tkx::widget->new(".");
 
print $b = $mw->new_ttk__button(-text => 'Hello',
                                -command => sub {button_pressed();});
 
print $b->configure,"\n";
