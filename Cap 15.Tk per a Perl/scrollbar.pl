#!/usr/bin/perl
#scrollbar.pl
use warnings;
use utf8;
use Tkx;
my $arrel = Tkx::widget->new(".");
 
($listbox = $arrel->new_tk__listbox(-height => 5))->g_grid(-column => 0,
                                    -row => 0, -sticky => "nwes");
($scrollbar = $arrel->new_ttk__scrollbar(-command => [$listbox, "yview"], 
        -orient => "vertical"))->g_grid(-column =>1, -row => 0,
        -sticky => "ns");
$listbox->configure(-yscrollcommand => [$scrollbar, "set"]);
($arrel->new_ttk__label(-text => "Missatge d'estat", 
        -anchor => "w"))->g_grid(-column => 0, -columnspan => 2, -row => 1,
        -sticky => "we");
$arrel->g_grid_columnconfigure(0, -weight => 1); 
$arrel->g_grid_rowconfigure(0, -weight => 1);
for ($i=0; $i<100; $i++) {
   $listbox->insert("end", "Línia " . $i . " de 100");
}
 
Tkx::MainLoop();
