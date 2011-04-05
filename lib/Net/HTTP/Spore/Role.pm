package Net::HTTP::Spore::Role;

use MooseX::Role::Parameterized;
use Net::HTTP::Spore;

parameter spore_clients => (isa => 'ArrayRef[HashRef]', required => 1);

role {
    my $p       = shift;
    my $clients = $p->spore_clients;

    foreach my $client (@$clients) {
        my $name   = $client->{name};
        my $config = $client->{config};

        has $name => (
            is      => 'rw',
            isa     => 'Object',
            lazy    => 1,
            default => sub {
                my $self          = shift;
                my $client_config = $self->$config;
                my $client        = Net::HTTP::Spore->new_from_spec(
                    $client_config->{spec},
                    %{ $client_config->{options} },
                );
                foreach my $mw ( @{ $client_config->{middlewares} } ) {
                    my %options = %{$mw->{options} || {}};
                    $client->enable( $mw->{name}, %options);
                }
                $client;
            },
        );

        has $config => (
            is      => 'rw',
            isa     => 'HashRef',
            lazy    => 1,
            default => sub { {} },
        );
    }
};

1;

=head1 NAME

Net::HTTP::Spore::Role

=head1 DESCRIPTION

=head1 SYNOPSIS

  package my::app;
  use Moose;
  with Net::HTTP::Spore::Role => {name => 'twitter', config => 'twitter_config'};

  ...

  my $app = my::app->new(twitter_config => $config->{spore}->{twitter_config});