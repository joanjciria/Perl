#!/usr/bin/perl
#actualitza.pl
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
 
my $stmt = qq(UPDATE empleats SET salari = 1000.00 where ID=1;);
            
my $rv = $dbh->do($stmt) or die $DBI::errstr;
 
if( $rv < 0 ) {
   print $DBI::errstr;
} else {
   print "Nombre de registres actualitzats : $rv\n";
}
 
print "Operació realitzada amb èxit\n";
 
$dbh->disconnect();
