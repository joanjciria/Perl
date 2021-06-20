package Persona; 
# Classe per emmagatzemar dades sobre una persona
#persona4.pm 
use warnings; 
use strict; 
 
sub new { 
    my $class = shift; 
    my $self = {@_}; 
    bless($self, $class); 
    return $self; 
}
 
sub cognom { 
my $self = shift; 
return $self->{cognom} 
} 
 
1;
