#!"C:\Perl64\bin\perl.exe"
#standart01.pl
use strict; 
use warnings;
use utf8;
use CGI ':standard';
 
print header(),start_html('List Demo'); 
print p('Una llista difícil:'); 
print ul(li('Un'),li('Dos'),li('Tres')); 
print p('Una llista fàcil:'); 
print ul(li(['Un','Dos','Tres'])); 
print p('Utilitzant una llista existent:'); 
my @list=('Un','Dos','Tres'); 
print ul(li(\@list)); 
print p('Amb atributs:'); 
print ul({-type=>'disc'},li(['Un','Dos','Tres'])); 
print end_html();
