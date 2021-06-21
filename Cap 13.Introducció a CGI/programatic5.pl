#!"C:\Perl64\bin\perl.exe"
#programatic5.pl
use strict; 
use warnings;
use utf8;
use CGI;  
 
my $cgi=new CGI; 
print $cgi->header(),$cgi->start_html("Exemples simples");
print $cgi->table({-border=>1,-cellspacing=>3,-cellpadding=>3}, 
$cgi->Tr({-align=>'center',-valign=>'top'}, [ 
$cgi->th(["Columna1","Columna2","Columna3"]), 
]), 
$cgi->Tr({-align=>'center',-valign=>'middle'}, [ 
$cgi->td(["Vermell","Blau","Grog"]), 
$cgi->td(["Verd","Taronja","Magenta"]), 
$cgi->td({-colspan=>3},["Una línia àmplia"]), 
]), 
$cgi->caption("Un exemple de taula") 
);
 
print $cgi->end_html();
