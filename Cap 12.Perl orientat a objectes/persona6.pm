package Persona; 
# Classe per emmagatzemar dades sobre una persona
#persona6.pm 
use warnings; 
use strict; 
use Carp; 
 
my @Tothom;
 
sub new { 
    my $class = shift; 
    my $self = {@_}; 
    bless($self, $class); 
    push @Tothom, $self;  
    return $self; 
} 
# Mètodes accessor d'objecte 
sub adresa { $_[0]->{adresa }=$_[1] if defined $_[1]; $_[0]->{adresa } }
sub cognom { $_[0]->{cognom }=$_[1] if defined $_[1]; $_[0]->{cognom } }
sub nom { $_[0]->{nom}=$_[1] if defined $_[1]; $_[0]->{nom} }
sub telefon { $_[0]->{telefon}=$_[1] if defined $_[1]; $_[0]->{telefon} } 
sub ocupacio { $_[0]->{ocupacio}=$_[1] if defined $_[1]; $_[0]->{ocupacio} } 
 
# Mètodes accessor de classe 
sub headcount { scalar @Tothom } 
sub tothom { @Tothom } 
1;
