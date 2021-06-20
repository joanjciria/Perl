package Persona; 
# Classe per emmagatzemar dades sobre una persona
#persona3.pm 
use warnings; 
use strict; 
sub new { 
    my $class = shift; 
    my $self = {@_}; 
    bless($self, $class); 
    return $self; 
}
1;
