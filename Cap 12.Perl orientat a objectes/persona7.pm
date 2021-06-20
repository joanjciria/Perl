package Persona; 
# Classe per emmagatzemar dades sobre una persona
#persona7.pm 
use warnings; 
use strict; 
use Carp; 
 
my @Tothom;
# Constructor i inicialització
sub new { 
    my $class = shift; 
    my $self = {@_}; 
    bless($self, $class); 
    $self->_init; 
    return $self; 
} 
sub _init { 
    my $self = shift; 
    push @Tothom, $self; 
    carp "Nou objecte creat"; 
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
