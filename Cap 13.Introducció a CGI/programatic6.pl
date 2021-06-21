#!"C:\Perl64\bin\perl.exe"
#programatic6.pl
use strict; 
use warnings;
use utf8;
use CGI;  
 
my $cgi=new CGI; 
print $cgi->header(); 
print $cgi->start_html( 
-title=>' Un fons vermell, 
-bgcolor=>'red' 
); 
print $cgi->h1("Aquesta pàgina és vermella"); 
print $cgi->end_html();
