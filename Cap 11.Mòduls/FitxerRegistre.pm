package FitxerRegistre;
my $LEVEL = 1;
 
sub obre{
   my $fitxerlog = shift;
   # obre fitxer log per afegir-hi
   open(LFH, '>>', $fitxerlog) or die "No es pot obrir  $fitxerlog: $!";
   # escriu l'hora:
   print LFH "Hora: ", scalar(localtime), "\n";
}
 
sub log{
   my($nivell_log,$msg_log) = @_;
   if($nivell_log <= $LEVEL){
      print LFH "$msg_log\n";
   }
}
 
sub tanca{
   close LFH;
}
 
sub conf_nivell{
   my $nivell_log = shift;
 
   if($nivell_log =~ /^\d+$/){
      $LEVEL = $nivell_log;
   }
}
 
1;
