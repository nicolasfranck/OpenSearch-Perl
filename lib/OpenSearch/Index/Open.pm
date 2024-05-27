package OpenSearch::Index::Open;
use strict;
use warnings;
use feature qw(signatures);
use Moose;

with 'OpenSearch::Parameters::Index::Open';

has '_base' => (
  is       => 'rw',
  isa      => 'OpenSearch::Base',
  required => 0,
  lazy     => 1,
  default  => sub { OpenSearch::Base->instance; }
);

sub execute($self) {
  my $res = $self->_base->_post( $self, [ $self->index, '_open' ] );
}

1;