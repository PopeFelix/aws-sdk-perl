
package Paws::KinesisAnalytics::DiscoverInputSchemaResponse;
  use Moose;
  has InputSchema => (is => 'ro', isa => 'Paws::KinesisAnalytics::SourceSchema');
  has ParsedInputRecords => (is => 'ro', isa => 'ArrayRef[ArrayRef[Str|Undef]]');
  has RawInputRecords => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::DiscoverInputSchemaResponse

=head1 ATTRIBUTES


=head2 InputSchema => L<Paws::KinesisAnalytics::SourceSchema>

Schema inferred from the streaming source. It identifies the format of
the data in the streaming source and how each data element maps to
corresponding columns in the in-application stream that you can create.


=head2 ParsedInputRecords => ArrayRef[ArrayRef[Str|Undef]]

An array of elements, where each element corresponds to a row in a
stream record (a stream record can have more than one row).


=head2 RawInputRecords => ArrayRef[Str|Undef]

Raw stream data that was sampled to infer the schema.


=head2 _request_id => Str


=cut

1;