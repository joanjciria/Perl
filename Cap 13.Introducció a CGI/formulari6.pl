#!"C:\Perl64\bin\perl.exe"
#formulari6.pl
#Generar i processar formularis
use strict; 
use warnings;
use utf8;
use CGI ':standard';
 
print header();
if (param('first') and param('last')) {
    my $first=ucfirst(lc(param('first')));
    my $last=ucfirst(lc(param('last')));
    print start_html("Benvingut"),h1("Hola, $first $last");
} else {
    print start_html(title=>"Entra el teu nom");
    if (param('first') or param('last')) {
       print center(font({color=>'red'},"Has d'entrar un ",(param('last')?"first":"last"),"nom"));
    }
    print generate_form();
}
print end_html();
sub generate_form {
    return start_form,
           h1("Si us plau, entra el teu nom:"),
           p("Cognom", textfield('last')),
           p("Nom", textfield('first')),
           p(submit),
           end_form;
}
