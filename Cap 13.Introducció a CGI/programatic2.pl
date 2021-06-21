#!"C:\Perl64\bin\perl.exe"
#programatic2.pl
use strict; 
use warnings;
use utf8;
use CGI; 
my $cgi=new CGI; 
print $cgi->header(),$cgi->start_html("Exemples simples");
print $cgi->ul($cgi->li("Un"),$cgi->li("Dos"),$cgi->li("Tres")); 
print $cgi->end_html();
