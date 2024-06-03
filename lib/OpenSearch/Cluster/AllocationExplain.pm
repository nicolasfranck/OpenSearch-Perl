package OpenSearch::Cluster::AllocationExplain;
use strict;
use warnings;
use feature qw(signatures);
no warnings qw(experimental::signatures);
use Moose;

with 'OpenSearch::Parameters::Cluster::AllocationExplain';

has '_base' => (
  is       => 'rw',
  isa      => 'OpenSearch::Base',
  required => 0,
  lazy     => 1,
  default  => sub { OpenSearch::Base->instance; }
);

sub execute($self) {
  my $res = $self->_base->_get( $self, [ '_cluster', 'allocation', 'explain' ] );
}

1;
