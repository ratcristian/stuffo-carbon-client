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

__END__

=head1 NAME

Stuffo::Carbon::Client - 

=head1 SYNOPSIS

	# The code goes here...

=head1 DESCRIPTION

=head2 Methods

=over 12

=item C<new>

Description

=item C<put>

Description

=item C<get>

Description

=back

=head1 AUTHOR

Cristian Rat - 
Tudor Marghidanu - L<tudor@stuffo.info>

=head1 SEE ALSO

L<Stuffo::Carbon>

=cut