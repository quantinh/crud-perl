package myWebSite::Controller::CustomerController;
use Mojo::Base 'Mojolicious::Controller';
use DBI;
use Data::Dumper;
use mojolicious::Plugin::TagHelpers;
use Mojolicious::Plugin::Database;

my $dbh = DBI->connect( "dbi:Pg:dbname=learning-perl;host=localhost;port=5432",
    "postgres", "123456" );

sub list {
    my $self = shift;

    # code to retrieve and display a list of customers
}

sub show {
    my $self = shift;

    # my $id   = $self->param('id');

    # code to retrieve and display a single customer by ID
}

sub create {
    my $self = shift;

    # code to display a form for creating a new customer
}

sub store {
    my $self = shift;

    # code to process the form submission and store a new customer

    $self->render(template => 'create');
}

sub edit {
    my $self = shift;
    my $id   = $self->param('id');

    # code to retrieve and display a form for editing a customer by ID
}

sub update {
    my $self = shift;
    my $id   = $self->param('id');

    # code to process the form submission and update a customer by ID
}



1;
