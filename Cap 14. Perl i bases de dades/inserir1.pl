#!/usr/bin/perl
#inserir1.pl
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
my $stmt = qq(INSERT INTO empleats (id,nom,salari,departament,carrec,data_contracte)
               VALUES (19,'Andreu',800,'IT','Tècnic','2018-02-06'));
my $rv = $dbh->do($stmt) or die $DBI::errstr;
print "Registres inserits amb èxit\n";
$dbh->disconnect();
