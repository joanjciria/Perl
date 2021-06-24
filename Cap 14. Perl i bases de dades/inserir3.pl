#!/usr/bin/perl
#inserir3.pl
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
           VALUES (23, 'Cristina', 800, 'Admin', 'Comptable', '2014-08-06'),\
           (44, 'Marta', 1000, 'Vendes', 'Comercial', '2019-11-27'),\
           (51, 'Aina', 1100, 'IT', 'Tècnic', '2015-01-31'),\
           (16, 'Jordi', 1000, 'Màrqueting', 'Cap', '2020-06-12')
         );
            
my $rv = $dbh->do($stmt) or die $DBI::errstr;
 
print "Registres inserits amb èxit\n";
$dbh->disconnect();
