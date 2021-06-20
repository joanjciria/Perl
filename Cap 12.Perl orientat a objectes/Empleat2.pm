package Empleat; 
#Empleat2.pm 
use persona6; 
use warnings; 
use strict; 
 
our @ISA = qw(Persona);
 
sub empresa { $_[0]->{empresa}=$_[1] if defined $_[1]; $_[0]->{empresa} }
sub carrec { $_[0]->{carrec}=$_[1] if defined $_[1]; $_[0]->{carrec} }
sub salari { $_[0]->{salari }=$_[1] if defined $_[1]; $_[0]->{salari } }
sub augment { 
my $self = shift; 
my $nousalari = $self->salari + 2000; 
$self->salari($nousalari); 
return $self; 
}
