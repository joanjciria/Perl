#!/usr/bin/perl
#select1.pl
use strict;
use warnings;
use utf8;
use DBI;
 
my $driver   = "SQLite"; 
my $database = "perlsqlitedb.db";
my $dsn = "DBI:$driver:dbname=$database";
my $userid = "";
my $password = "";
my $dbh = DBI->connect($dsn, $userid, $password, { RaiseError => 1 }) 
   or die $DBI::errstr;
 
print "S'ha obert la base de dades amb èxit\n";
 
my $stmt = qq(SELECT id,nom,salari,departament,carrec,data_contracte FROM empleats;);
my $sth = $dbh->prepare( $stmt );
my $rv = $sth->execute() or die $DBI::errstr;
 
if($rv < 0) {
   print $DBI::errstr;
}
 
my $c=0;
 
while(my @row = $sth->fetchrow_array()) {
      print "NOM = ". $row[1] . " - SALARI = ". $row[2] ."\n";
     $c += 1;
}
 
if( $rv < 0 ) {
   print $DBI::errstr;
} else {
   print "Nombre de registres totals : $c\n";
}
 
$dbh->disconnect();
