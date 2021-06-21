#!"C:\Perl64\bin\perl.exe"
#programatic4.pl
use strict; 
use warnings;
use utf8;
use CGI;  
 
my $cgi=new CGI; 
print $cgi->header(),$cgi->start_html("Exemples simples");
print $cgi->ol({-type=>"a"}),$cgi->li(["Item1","Item2","Item3"]);
print $cgi->end_html();
