package Stuffo::Carbon::Client;

use Moose;

has 'url' => (
    is => 'ro',
    isa => 'Str',
    required => 1,
);

has '_ua' => (
    is => 'ro',
    isa => 'Mojo::UserAgent',
    lazy => 1,
    default => sub {
            return Mojo::UserAgent->new();
    }
);

sub put {
    my ( $self, $name, $body ) = @_;

    return $self->_ua->post( sprintf( '%s/put/%s', $self->url(), $name ) => {'Content-Type' => 'text/plain'} => $body );
}

sub get {
    my ( $self, $name ) = @_;

    return $self->_ua->post( sprintf( '%s/get/%s', $self->url(), $name ) )->res()->body();
}

__PACKAGE__->meta()->make_immutable();

1;