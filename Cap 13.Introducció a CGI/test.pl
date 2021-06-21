#!"C:\Perl64\bin\perl.exe"
# test.pl
use CGI;
use strict;
my $cgi = new CGI;
 
print "Content-Type:text/html\r\n\r\n";
 
my $param = $cgi->{param};
my $i = 0; 
 
foreach( keys(%{$param}) ){
 
  print $_," -> ",$param->{$_}[$i];
  #print $i = $i + 1;
  print "<br/>";
  
}
