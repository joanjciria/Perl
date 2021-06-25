#!/usr/bin/perl
#listbox.pl
use warnings;
use utf8;
use Tkx;
 
# Inicialitza les "bases de dades" del nostre país:
# - la llista de codis de país (un subconjunt de totes maneres)
# - llista paral•lela de noms de països, amb el mateix ordre que els codis de país
# - una taula de hash que assigna el codi de país a la població
 
@codipais = ("ar", "au", "be", "br", "ca", "cn", "dk", "fi", "fr", "gr", "in",
             "it", "jp", "mx", "nl", "no", "se", "ch");
@nompais = ("Argentina", "Austràlia", "Bèlgica", "Brasil", "Canadà", "China",
            "Dinamarca", "Finlàndia", "França", "Grècia", "India", "Itàlia",
            "Japó", "Mèxic", "Holanda", "Noruega", "Suècia", "Suïssa");
%poblacio = ("ar" => 41000000, "au" => 21179211, "be" => 10584534,
             "br" => 185971537, "ca" => 33148682, "cn" => 1323128240,
             "dk" => 5457415, "fi" => 5302000, "fr" => 64102140,
             "gr" => 11147000,  "in" => 1131043000, "it" => 59206382,
             "jp" => 127718000, "mx" => 106535000, "nl" => 16402414,
             "no" => 4738085, "se" => 9174082, "ch" => 7508700);
 
# Noms dels regals que podem enviar
%envia =("targeta" => "targeta salutació", "flors" => "flors",
         "cap" => "cap de cavall");
 
# Crea i quadriga el marc exterior
$arrel = Tkx::widget->new(".");
$marc = $arrel->new_ttk__frame(-padding => "5 5 12 0");
$marc->g_grid(-column => 0, -row => 0, -sticky => "nwes");
$arrel->g_grid_columnconfigure(0, -weight => 1);
$arrel->g_grid_rowconfigure(0, -weight => 1);
 
# Crea els diferents ginys; observeu les variables que moltes
# d'ells estan obligats, així com el botó de devolució de trucada.
# El quadre de llista és l'únic giny al qual haurem de referir-nos directament
# més endavant al nostre programa, així que per comoditat l’assignarem a una variable.
# Recordeu que hem d’utilitzar una llista amb format Tcl per a la llista variable.
$nom_paisos = ''; foreach $i (@nompais) {
                      $nom_paisos = $nom_paisos . ' {' . $i . '}';
                  };
$lbox = $marc->new_tk__listbox(-listvariable => \$nom_paisos, -height => 5);
$etiq_envia = $marc->new_ttk__label(-text => "Envia al lider del país:");
$radiobot1 = $marc->new_ttk__radiobutton(-text => $envia{'targeta'},
            -variable => \$regal, -value => 'targeta');
$radiobot2 = $marc->new_ttk__radiobutton(-text => $envia{'flors'}, 
            -variable => \$regal, -value => 'flors');
$radiobot3 = $marc->new_ttk__radiobutton(-text => $envia{'cap'},
            -variable => \$regal, -value => 'cap');
$envia = $marc->new_ttk__button(-text => "Envia regal",
        -command => sub {enviaGift()}, -default => 'active');
$etiq_missatge = $marc->new_ttk__label(-textvariable => \$enviamsg,
                -anchor => "center");
$etiq_estat = $marc->new_ttk__label(-textvariable => \$statusmsg,
             -anchor => "w");
 
# Grid dels widgets
$lbox->g_grid(-column => 0, -row => 0, -rowspan => 6, -sticky => "nsew");
$etiq_envia->g_grid(-column => 1, -row => 0, -padx => 10, -pady => 5);
$radiobot1->g_grid(-column => 1, -row => 1, -sticky => "w", -padx => 20);
$radiobot2->g_grid(-column => 1, -row => 2, -sticky => "w", -padx => 20);
$radiobot3->g_grid(-column => 1, -row => 3, -sticky => "w", -padx => 20);
$envia->g_grid(-column => 2, -row => 4, -sticky => "e");
$etiq_missatge->g_grid(-column => 1, -row => 5, -columnspan => 2,
                       -sticky => "n", -pady => 5, -padx => 5);
$etiq_estat->g_grid(-column => 0, -row => 6, -columnspan => 2, -sticky => "we");
$marc->g_grid_columnconfigure(0, -weight => 1);
$marc->g_grid_rowconfigure(0, -weight => 1);
 
# Estableix els enllaços d'esdeveniments per quan canviï la selecció al quadre de llista,
# quan l'usuari fa doble clic a la llista i quan prem la tecla Retorn
$lbox->g_bind("<<ListboxSelect>>", sub {mostraPoblacio()});
$lbox->g_bind("<Double-1>", sub {enviaGift()});
$arrel->g_bind("<Return>", sub {enviaGift()});
 
# Es crida quan canvia la selecció al quadre de llista; desxifrar
# quin país està seleccionat actualment i, a continuació, cerqueu-ne el país
# codi, i a partir d’això, la seva població. Actualitzeu el missatge d'estat
# amb la nova població. A més, esborreu el missatge sobre el fitxer
# s’envia un regal, de manera que no s’enfonsa després de començar a fer-ho
# altres coses.
sub mostraPoblacio {
    my @idx = $lbox->curselection;
    if ($#idx==0) {
        my $codip = $codipais[$idx[0]];
        my $nomp = $nompais[$idx[0]];
        my $popn = $poblacio{$codip};
        $statusmsg = "La població de " . $nomp . "(" . $codip . ") és $popn";
    }
    $enviamsg = "";
}
 
# Es crida quan canvia la selecció al quadre de llista; esbrina quin país està
# seleccionat actualment i, a continuació, cerca el seu codi de país
# i, a partir d’aquí, la seva població. Actualitza el missatge d'estat amb
#la nova població.
sub enviaGift {
    my @idx = $lbox->curselection;
    if ($#idx==0) {
        $lbox->see($idx[0]);
        my $nomp =$nompais[$idx[0]];
        $enviamsg = "Enviat " . $envia{$regal} . " al líder de " . $nomp
    }     
}
 
# Acoloreix les línies alternatives del quadre de llista
for ($i=0; $i<=$#nompais; $i+=2) {
    $lbox->itemconfigure($i, -background => "#f0f0ff");
}
 
# Configura l'estat inicial de la interfície, inclosa la selecció del regal
# predeterminat a enviar i la supressió dels missatges. Seleccioneu el primer
# país de la llista; com que l'esdeveniment <<ListboxSelect>> només s'activa
# quan els usuaris fan un canvi, anomenem explícitament mostraPoblacio.
 
$regal = 'targeta';
$enviamsg = "";
$statusmsg = "";
$lbox->selection_set(0);
mostraPoblacio;
 
Tkx::MainLoop();
