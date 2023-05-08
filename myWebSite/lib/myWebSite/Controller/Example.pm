package myWebSite::Controller::Example;
use Mojo::Base 'Mojolicious::Controller', -signatures;
use DBI;
use Data::Dumper;
use mojolicious::Plugin::TagHelpers;
use Mojolicious::Plugin::Database;

my $dbh = DBI->connect("dbi:Pg:dbname=learning-perl; host=localhost; port=5432", "postgres", "123456");

# This action will render a template
sub welcome ($self) {
    my $sth = $dbh->prepare("SELECT * FROM actor");
    $sth->execute();

    # i want show the result in the browser
    my $actors = $sth->fetchall_arrayref( {} );
    $self->stash( actors => $actors );

    # show the result in json format
    # $self->stash(json =>{actors => $actors});

    # Render template "example/welcome.html.ep" with message
    $self->render(
        msg => 'Welcome to the Mojolicious real-time web framework!' );
}

sub create ($self) {
    my $params = $self->req->params->to_hash;

    # Extract the values we want to add to the database
    my $first_name = $params->{first_name};
    my $last_name  = $params->{last_name};

    # Prepare the SQL statement
    my $sql =
"INSERT INTO actor (first_name, last_name, last_update) VALUES (?, ?, CURRENT_TIMESTAMP)";

    # Execute the statement and get the new ID
    my $sth    = $dbh->prepare($sql);
    my $result = $sth->execute( $first_name, $last_name );
}

sub update ($self) {

    # get form data from request
    my $actor_id   = $self->req->param('actor_id');
    my $first_name = $self->req->param('first_name');
    my $last_name  = $self->req->param('last_name');

    # update actor in database
    my $sth = $dbh->prepare(
"UPDATE actor SET first_name = ?, last_name = ?, last_update = NOW() WHERE actor_id = ?"
    );
    my $result = $sth->execute( $first_name, $last_name, $actor_id );
}

sub delete ($self) {
    my $actor_id = $self->param('actorId');

# delete from actor where actor_id = $actor_id and flim_actor where actor_id = $actor_id;
    my $sth2 =
      $dbh->prepare("delete from film_actor where actor_id = $actor_id");
    my $result2 = $sth2->execute();
    my $sth     = $dbh->prepare("delete from actor where actor_id = $actor_id");
    my $result  = $sth->execute();

    if ($result) {
        $self->render( text => 'Done' );
    }
    else {
        $self->render( text => 'Error' );
    }
}

1;
