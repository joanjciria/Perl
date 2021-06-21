#!"C:\Perl64\bin\perl.exe"
#formulari7.pl
#Valida usuari i contrasenya
use strict; 
use warnings;
use utf8;
use CGI ':standard';
 
our ( $name, $value ) = split( '=', $ENV{ QUERY_STRING } );
 
print header(), start_html( "Valida usuari i contrasenya");
print p( 'Introduïu usuari i contrasenya: ' );
 
print '<form method = "POST">';
print 'Usuari:<INPUT SIZE = "40" NAME = "USERNAME">';
print "<br/>";
print ' Contrasenya:<INPUT SIZE = "40" NAME = "PASSWORD" TYPE = PASSWORD>';
print "<br/>";
print '<INPUT TYPE = "SUBMIT" VALUE = "Enter">';
print '</form>';
 
my $testUsername = "";
my $testPassword = "";
my $line = 0;
my $username ="";
my $password = "";
my $userVerified = 0;
my $passwordVerified = 0;
 
$testUsername = param( "USERNAME" );
$testPassword = param( "PASSWORD" );
 
open ( FILE, "password.txt" ) || die "No s'ha pogut obrir la base de dades";
 
while ( $line = <FILE> )
{
   chomp $line;
   ( $username, $password ) = split( ",", $line );
   
   if ( $testUsername eq $username )
   {
      $userVerified = 1;
      if ( $testPassword eq $password )
      {
         $passwordVerified = 1;
         last;
      }
   } 
}
close( FILE );
 
if ( $userVerified && $passwordVerified )
{
   accessGranted();
}
elsif ( $userVerified && !$passwordVerified )
{
   wrongPassword();
}
else
{
   accessDenied();
}
 
sub accessGranted
{
   print "<TITLE>Gràcies</TITLE>";
   print "S'ha concedit el permís, $username.";
   print "<BR>Gaudeix del lloc.";
}
 
sub wrongPassword
{
   print "<TITLE>Accés denegat</TITLE>";
   print "Heu introduït una contrasenya no vàlida.<BR>";
   print "S'ha denegat l'accés.";
}
 
sub accessDenied
{
   print "<TITLE>Accés denegat</TITLE>";
   print "Se us ha denegat l'accés a aquest servidor.";
}
 
print end_html();
