use DBI;

sub sub1 {
    my $myString = "quantinh";
    print "Inside a sub1: $myString\n";
}


# Action connect to database postgres
sub connect_db {
      # all param function connect database
      my ($dbname, $host, $port, $username, $password) = @_;
      my $dsn = "dbi:Pg:dbname = $dbname; host = $host; port = $port";
      my $dbh = DBI->connect($dsn, $username, $password, { RaiseError => 1, AutoCommit => 0 }) or die "Cannot connect to database: $DBI::errstr";
      return $dbh;
}
