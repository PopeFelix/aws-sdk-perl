
package Paws::ECS::UpdateContainerInstancesState;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has ContainerInstances => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'containerInstances' , required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContainerInstancesState');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::UpdateContainerInstancesStateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::UpdateContainerInstancesState - Arguments for method UpdateContainerInstancesState on Paws::ECS

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContainerInstancesState on the 
Amazon EC2 Container Service service. Use the attributes of this class
as arguments to method UpdateContainerInstancesState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContainerInstancesState.

As an example:

  $service_obj->UpdateContainerInstancesState(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the container instance to update. If you do not specify a
cluster, the default cluster is assumed.



=head2 B<REQUIRED> ContainerInstances => ArrayRef[Str|Undef]

A space-separated list of container instance IDs or full Amazon
Resource Name (ARN) entries.



=head2 B<REQUIRED> Status => Str

The container instance state with which to update the container
instance.

Valid values are: C<"ACTIVE">, C<"DRAINING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContainerInstancesState in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

