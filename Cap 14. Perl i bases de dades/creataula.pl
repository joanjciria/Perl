#!/usr/bin/perl
#creataula.pl
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
 
my $stmt = qq(CREATE TABLE IF NOT EXISTS empleats(
   id integer PRIMARY KEY,\
   nom text,
   salari real,\
   departament text,\
   carrec text,\
   data_contracte text););
 
my $rv = $dbh->do($stmt);
if($rv < 0) {
   print $DBI::errstr;
} else {
   print "Taula creada amb èxit\n";
}
$dbh->disconnect();
