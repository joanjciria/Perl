#!"C:\Perl64\bin\perl.exe"
#programatic1.pl
use strict; 
use warnings;
use utf8;
use CGI; 
 my $cgi=new CGI; 
print $cgi->header(),$cgi->start_html("Exemples simples");
print $cgi->center("Text centrat"); 
print $cgi->p("Un Paràgraf"); 
print $cgi->br(); 
print $cgi->b("Bold"),$cgi->i("Italic"); 
print $cgi->p("Un Paràgraf",$cgi->sup("Un superscript")); 
print $cgi->end_html();
