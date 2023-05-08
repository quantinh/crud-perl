package crud::Controller::ActorController;
use Mojo::Base 'Mojolicious::Controller', -signatures;
use strict;
use warnings;
use DBI;
do '../../../config/database.pl';


# Action showData
sub show($self) {
  # use function connect database
  my $dbh = connect_db('learning-perl', 'localhost', '5432', 'postgres', '123456');
  # string query to database
  my $sth = $dbh->prepare( 
    qq(
      SELECT *
      FROM actor
      ORDER BY actor_id DESC
      LIMIT 5;
    )
  );
  # Show error if false 
  my $rv = $sth->execute() or die $DBI::errstr;
  # show item put out 
  if($rv < 0) {
    print $DBI::errstr;
  }
  print "Operation done successfully\n";
  my @rows;
  while (my $row = $sth->fetchrow_hashref) {
    push @rows, $row;
  }
  $sth->finish();
  $dbh->disconnect();
  $self->render(
    rows      => \@rows,
    template  => "myTemplates/list"
  );
  return;
}
# Action formAdd
sub fromAdd($self) {
  $self->render(
    template => 'myTemplates/add'
  );
}
# Action Add
sub add($self) {
  # use function connect database
  my $dbh = connect_db('learning-perl', 'localhost', '5432', 'postgres', '123456');
  my $first_name = $self->param('first_name');
  my $last_name = $self->param('last_name');
  my $last_update = $self->param('last_update');
  # string query to database
  my $sth = $dbh->prepare(
    qq(
      INSERT INTO 
      actor (first_name, last_name, last_update) 
      VALUES ('$first_name', '$last_name', NOW());
    )
  );
  # Show error if false 
  my $rv = $sth->execute() or die $DBI::errstr;
  # show item put out 
  if($rv < 0) {
    print $DBI::errstr;
  }
  print "Operation done successfully\n";
  $sth->finish();
  $dbh->disconnect();
  $self->redirect_to('/');
  return;
}
# Action formDelete
sub delete($self) {
  # use function connect database
  my $dbh = connect_db('learning-perl', 'localhost', '5432', 'postgres', '123456');
  my $id = $self->stash('id');
  my $sth = $dbh->prepare(
    qq(
      DELETE FROM actor   
      WHERE 
      actor_id = $id; 
    )
  );
  # string query to database
  my $rv = $sth->execute() or die $DBI::errstr;
  $self->redirect_to('/');
}
# Action formEdit
sub formUpdate($self) {
  # use function connect database
  my $dbh = connect_db('learning-perl', 'localhost', '5432', 'postgres', '123456');
  my $id = $self->stash('id');
  # string query to database
  my $sth = $dbh->prepare(
    qq(
      SELECT * 
      FROM actor 
      WHERE actor_id = $id 
      LIMIT 1
    )
  );
  my $rv = $sth->execute() or die $DBI::errstr;
  my @rows;
  while (my $row = $sth->fetchrow_hashref) {
    push @rows, $row;
  }
  $self->render(
    rows => \@rows,
    template => 'myTemplates/update'
  );
}
# Action formEdit
sub update ($self) {
  # use function connect database
  my $dbh = connect_db('learning-perl', 'localhost', '5432', 'postgres', '123456');
  my $id = $self->stash('id');
  my $first_name = $self->param('first_name');
  my $last_name = $self->param('last_name');
  my $sth = $dbh->prepare(
    qq(
      UPDATE actor 
      SET 
      first_name = '$first_name',
      last_name = '$last_name'
      WHERE actor_id = $id
    )
  );
  my $rv = $sth->execute() or die $DBI::errstr;
  $self->redirect_to('/');
}
1;
