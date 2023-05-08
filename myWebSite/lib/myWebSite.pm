package myWebSite;
use Mojo::Base 'Mojolicious', -signatures;
use Mojo::Base;
use Mojolicious::Command::generate::controller;

# This method will run once at server start
sub startup ($self) {

  # Load configuration from config file
  my $config = $self->plugin('NotYAMLConfig');


  # Configure the application
  $self->secrets($config->{secrets});

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('Example#welcome')->name('show-data');
  $r->post('/create')->to('Example#create');
  $r->delete('/delete/:actorId')->to('Example#delete');
  $r->post('/update/:actorId')->to('Example#update');
}

1;
