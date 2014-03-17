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
}

sub get {
	my ( $self, $name ) = @_;

	return undef;
}

__PACKAGE__->meta()->make_immutable();

1;