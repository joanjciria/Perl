package Persona; 
# Classe per emmagatzemar dades sobre una persona
#persona8.pm 
use warnings; 
use strict; 
use Carp; 
 
my @Tothom;
# Constructor
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
sub tothom { @Tothom } 
 
# Mètodes d'utilitat 
sub nomcomplet { 
    my $self = shift; 
    return $self->nom." ".$self->cognom; 
} 
sub escriucarta { 
    my $self = shift; 
    my $destinatari = $self->nomcomplet; 
    my $adresa = $self->adresa; 
    my $nom= $self->nom; 
    my $contingut = shift; 
    my @data = (localtime)[3,4,5]; 
    $data[1]++; # Els mesos comencen a les 0! Afegiu-ne un per humanitzar.
    $data[2]+=1900; # Afegiu 1900 per obtenir l'any en curs.
    my $data = join "/", @data; 
    print<<EOF; 
$destinatari 
$adresa 
$data 
Benvolgut $nom, 
$contingut 
Atentament
 
EOF
 
    return $self; 
} 
1;
