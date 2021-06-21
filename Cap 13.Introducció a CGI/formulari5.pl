#!"C:\Perl64\bin\perl.exe"
#formulari5.pl
#Utilitzant la funció param() per obtenir el paràmetre
use strict; 
use warnings;
use utf8;
use CGI ':standard';
 
if (param()) {
    my @params    = param();
    my $nom = param('nom') || 'tu no tens nom!';
    my $cognom  = param('cognom')  || 'tu no tens cognom!';
    print 
        header(),
        start_html(
            -title   => 'Benvingut/uda!',
      -text    => '#520063'
        ),
        h1("Hola, $nom $cognom!"),
        end_html();
 
} else {
    print
    header(),
  start_html('Un formulari simple'),
  h1('Si us plau, entra el teu nom'),
  start_form(),
  'Nom: ',
  textfield(-name => 'nom'),
  br(),
  'Cognom: ',
  textfield(-name => 'cognom'),
  br(),
  submit(),
  end_form(),
  end_html();
}
