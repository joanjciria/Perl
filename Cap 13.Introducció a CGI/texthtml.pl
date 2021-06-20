#!"C:\Perl64\bin\perl.exe"
#texthtml.pl
use strict; 
use warnings;
use utf8;
print "Content-type: text/html\n\n"; 
print "<html><head><title>Environment Dumper </title></head><body>";
print "<center><table border=1>"; 
foreach (sort keys %ENV) { 
    print "<tr><td>$_</td><td>$ENV{$_}</td></tr>" 
} 
print "</table></center></body></html>";
