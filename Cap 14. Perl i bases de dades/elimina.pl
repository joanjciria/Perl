#!/usr/bin/perl
#elimina.pl
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
my $stmt = qq(DELETE from empleats where ID = 23;);
my $sth = $dbh->prepare( $stmt );
my $rv = $sth->execute() or die $DBI::errstr;
if( $rv == 0 ) {
   print "No s'ha trobat l'empleat a eliminar.\n";
} else {
   print "Empleat eliminat.\n"; 
}
 
$stmt = qq(SELECT * FROM empleats;);
$sth = $dbh->prepare( $stmt );
$rv = $sth->execute() or die $DBI::errstr;
my $files=0;
 
while(my @row = $sth->fetchrow_array()) {
    
    $files += 1;
}
 
if( $rv < 0 ) {
   print $DBI::errstr;
} else {
   print "Queden $files empleats.\n";
}
 
$dbh->disconnect();
