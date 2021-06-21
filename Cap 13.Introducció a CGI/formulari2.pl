#!"C:\Perl64\bin\perl.exe"
#formulari2.pl
#Demonstrates use of CGI.pm with HTML form
use strict; 
use warnings;
use utf8;
use CGI ':standard';
 
my $word = param( "word" );
 
print header(), start_html( 'Utilitzant GET amb formularis' );
print p( 'Introduïu aquí una de les vostres paraules preferides: ' );
 
print start_form(), textfield( "word" );
print submit( "Submit word" ), end_form();
 
print p( 'Your word is: ', b( $word ) ) if $word;
print end_html();
