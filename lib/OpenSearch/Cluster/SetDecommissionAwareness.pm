package OpenSearch::Cluster::SetDecommissionAwareness;
use strict;
use warnings;
use Moo;
use Types::Standard qw(InstanceOf);
use feature qw(signatures);
no warnings qw(experimental::signatures);

with 'OpenSearch::Parameters::Cluster::SetDecommissionAwareness';

has '_base' => (
  is       => 'rw',
  isa      => InstanceOf['OpenSearch::Base'],
  required => 1,
);

sub execute($self) {
  my $res = $self->_base->_put( $self, [ '_cluster', 'decommission', 'awareness', $self->attribute, $self->value ] );
}


1;
