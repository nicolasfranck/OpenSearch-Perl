package OpenSearch::Security::PatchUsers;
use strict;
use warnings;
use Moo;
use Types::Standard qw(InstanceOf);
use feature         qw(signatures);
no warnings qw(experimental::signatures);

with 'OpenSearch::Parameters::Security::PatchUsers';

has '_base' => (
  is       => 'rw',
  isa      => InstanceOf ['OpenSearch::Base'],
  required => 1,
);

sub execute($self) {
  my $res = $self->_base->_patch( $self, [ '_plugins', '_security', 'api', 'internalusers' ] );
}

1;
