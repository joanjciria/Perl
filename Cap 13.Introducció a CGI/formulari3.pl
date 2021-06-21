#!"C:\Perl64\bin\perl.exe"
#formulari3.pl
#Demonstrates GET method with HTML form.
use strict; 
use warnings;
use utf8;
use CGI ':standard';
 
our ( $name, $value ) = split( '=', $ENV{ QUERY_STRING } );
 
print header(), start_html( 'Utilitzant GET amb formularis' );
print p( 'Introduïu aquí una de les vostres paraules preferides: ' );
 
print '<form method = "GET" action = "test.pl">';
print '<input type = "text" name = "paraula1">';
print "<br/>";
print '<input type = "text" name = "paraula2">';
print "<br/>";
print '<input type = "submit" value = "Envia paraules">';
print '</form>';
 
print end_html();
