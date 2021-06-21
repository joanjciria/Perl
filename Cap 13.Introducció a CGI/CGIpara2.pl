#!"C:\Perl64\bin\perl.exe"
#CGIpara2.pl
use strict; 
use warnings;
use utf8;
use CGI; 
 
my $cgi=new CGI; #llegir en paràmetres
 
#itera sobre el nom de cada paràmetre
foreach ($cgi->param()) { 
    #modifica i configureu el valor de cada paràmetre des de si mateix
    $cgi->param($_,ucfirst(lc($cgi->param($_)))); 
} 
print $cgi->header();  #imprimeix una capçalera
print $cgi->start_html("Benvinguda"); # generarà inici de document HTML
print "<h1>Benvingut, ",$cgi->param('first')," ",$cgi->param('last'),"</h1>";
print $cgi->end_html();
