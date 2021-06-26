#!/usr/bin/perl
#text.pl
use warnings;
use utf8;
use Tkx;
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Text");
my $marc = $arrel->new_ttk__frame(-padding => "3 3 12 12", -width =>300, -height => 200);
$marc->configure(-padding => "5 7 10 12");       
$marc->configure(-relief => "raised");
$marc->g_grid(-column => 0, -row => 0, -sticky => "nwes");
 
Tkx::font_create("EstilFont1", -family => "Helvetica", -size => 12, -weight => "bold");
 
my $text = $marc->new_tk__text(-width => 40, -height => 10, -font => "EstilFont1");
$text->g_grid(-column => 0, -row => 0, -sticky => "w");
$text->insert("end", "Hola a tothom.");
 
($scrollbar = $arrel->new_ttk__scrollbar(-command => [$text, "yview"], 
        -orient => "vertical"))->g_grid(-column =>1, -row => 0, -sticky => "ns");
$text->configure(-yscrollcommand => [$scrollbar, "set"]);
 
$arrel->g_grid_columnconfigure(0, -weight => 1); $arrel->g_grid_rowconfigure(0, -weight => 1);
 
Tkx::MainLoop();
