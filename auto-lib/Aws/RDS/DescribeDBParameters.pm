
package Aws::RDS::DescribeDBParameters {
  use Moose;
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has Source => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::DescribeDBParametersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBParametersResult');
}
1;