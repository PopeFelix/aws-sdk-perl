
package Paws::DeviceFarm::ListNetworkProfiles;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListNetworkProfiles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::ListNetworkProfilesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListNetworkProfiles - Arguments for method ListNetworkProfiles on Paws::DeviceFarm

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNetworkProfiles on the 
AWS Device Farm service. Use the attributes of this class
as arguments to method ListNetworkProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNetworkProfiles.

As an example:

  $service_obj->ListNetworkProfiles(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the project for which you want to
list network profiles.



=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.



=head2 Type => Str

The type of network profile you wish to return information about. Valid
values are listed below.

Valid values are: C<"CURATED">, C<"PRIVATE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNetworkProfiles in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
