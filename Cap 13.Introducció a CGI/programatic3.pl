#!"C:\Perl64\bin\perl.exe"
#programatic3.pl
use strict; 
use warnings;
use utf8;
use CGI;  
 
my $cgi=new CGI; 
print $cgi->header(),$cgi->start_html("Exemples simples");
print $cgi->ul($cgi->li(["Un","Dos","Tres"]));
print $cgi->end_html();
