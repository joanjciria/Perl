#!"C:\Perl64\bin\perl.exe"
# Get form submitted value
#formulari1.pl
use strict; 
use warnings;
use utf8;
use CGI ':standard';
 
print header();
print start_form;
print "Un quadre de text: &nbsp; &nbsp; &nbsp; ",
        textfield('usuari', 'Entra...', 50), br();  
print "Un quadre de selecció: &nbsp; &nbsp; &nbsp;  ",
        popup_menu('SelectBox', ['Perl', 'Web', 'Desenvolupament'], 'Fast');  
print p, "Una àrea de text: &nbsp; &nbsp; &nbsp;",
        textarea('comentaris', 'Escriu...', 10, 50);
print p, "Quadres de selecció: ",
        checkbox_group('check1', ['un', 'dos', 'tres']);
print p, "Botons de radio: ",
        radio_group('radio1', ['a', 'b', 'c']);
print p, submit();
print end_form;
