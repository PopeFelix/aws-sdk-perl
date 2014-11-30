
package Paws::CloudFront::UpdateDistributionResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Distribution => (is => 'ro', isa => 'Paws::CloudFront::Distribution');
  has ETag => (is => 'ro', isa => 'Str');

}
1;