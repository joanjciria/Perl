#!"C:\Perl64\bin\perl.exe"
#CGIpara1.pl
use strict; 
use warnings;
use utf8;
use CGI; 
 
my $cgi=new CGI; #llegir en paràmetres
print $cgi->header(); #imprimeix una capçalera
print $cgi->start_html("Benvinguda"); #generara inici de document HTML
print "<h1>Benvingut, ",$cgi->param('first')," ",$cgi->param('last'),"</h1>";
print $cgi->end_html(); #finalitza el document HTML
