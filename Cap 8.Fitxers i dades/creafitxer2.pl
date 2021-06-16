#!/usr/bin/perl
# creafitxer2.pl
use strict;
use warnings;
use utf8;
use open IN => ':utf8', OUT => ':encoding(ISO-8859-15)';
 
my $str = <<END;
Aquest és el text de mostra
que s'utilitza per escriure al fitxer.
END
 
my $nomfitxer = 'noufitxer.txt';
open FH, ">> $nomfitxer" or die $!;
print FH $str;
close(FH);
print "Escriptura en el fitxer correcta!\n";