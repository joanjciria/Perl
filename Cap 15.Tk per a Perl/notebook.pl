#!/usr/bin/perl
#notebook.pl
use warnings;
use utf8;
use Tkx;
 
my $arrel = Tkx::widget->new(".");
$arrel->g_wm_title("Notebook");
 
$n = $arrel->new_ttk__notebook;
$n->g_grid(-sticky => 'we',-pady => 15, -padx => 15);
 
my $f1 = $n->new_ttk__frame;
$f1->g_grid(-sticky => 'we',-pady => 15, -padx => 15);
 
my $f2 = $n->new_ttk__labelframe;
$f2->g_grid(-sticky => 'we',-pady => 15, -padx => 15);
 
$n->add($f1, -text => "Un");
$n->add($f2, -text => "Dos");
 
my $etiqueta1 = $f1->new_ttk__label(-text => "Text etiqueta 1");
$etiqueta1->g_grid(-sticky => 'we', -padx => 5, -pady => 5);
 
my $etiqueta2 = $f2->new_ttk__label(-text => "Text etiqueta 2");
$etiqueta2->g_grid( -sticky => 'we', -padx => 5, -pady => 5);
 
Tkx::MainLoop();
