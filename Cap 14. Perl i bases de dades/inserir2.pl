#!/usr/bin/perl
#inserir2.pl
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
 
my @valors;
@valors = (12, 'Jaume', 700, 'IT', 'Tècnic', '2019-04-16');
 
my $sth = $dbh->prepare('INSERT INTO empleats VALUES (?, ?, ?, ?, ?, ?)');
            
$sth->execute(@valors);
 
print "Registres inserits amb èxit\n";
$dbh->disconnect();
