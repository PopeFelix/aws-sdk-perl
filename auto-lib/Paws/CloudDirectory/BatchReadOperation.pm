package Paws::CloudDirectory::BatchReadOperation;
  use Moose;
  has ListObjectAttributes => (is => 'ro', isa => 'Paws::CloudDirectory::BatchListObjectAttributes');
  has ListObjectChildren => (is => 'ro', isa => 'Paws::CloudDirectory::BatchListObjectChildren');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchReadOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchReadOperation object:

  $service_obj->Method(Att1 => { ListObjectAttributes => $value, ..., ListObjectChildren => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchReadOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->ListObjectAttributes

=head1 DESCRIPTION

Represents the output of a C<BatchRead> operation.

=head1 ATTRIBUTES


=head2 ListObjectAttributes => L<Paws::CloudDirectory::BatchListObjectAttributes>

  Lists all attributes associated with an object.


=head2 ListObjectChildren => L<Paws::CloudDirectory::BatchListObjectChildren>

  Returns a paginated list of child objects that are associated with a
given object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
