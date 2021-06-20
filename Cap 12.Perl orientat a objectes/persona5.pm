package Persona; 
# Classe per emmagatzemar dades sobre una persona
#persona5.pm 
use warnings; 
use strict; 
use Carp; 
 
my $Poblacio = 0; 
 
sub new { 
    my $class = shift; 
    my $self = {@_}; 
    bless($self, $class); 
    $Poblacio++; 
    return $self; 
} 
# Mètodes accessor d'objecte 
sub adreça { $_[0]->{adresa }=$_[1] if defined $_[1]; $_[0]->{adresa } }
sub cognom { $_[0]->{cognom }=$_[1] if defined $_[1]; $_[0]->{cognom } }
sub nom { $_[0]->{nom}=$_[1] if defined $_[1]; $_[0]->{nom} }
sub telefon { $_[0]->{telefon}=$_[1] if defined $_[1]; $_[0]->{telefon} } 
sub ocupacio { $_[0]->{ocupacio}=$_[1] if defined $_[1]; $_[0]->{ocupacio} } 
 
# Mètodes accessor de classe 
sub headcount { $Poblacio } 
1;
