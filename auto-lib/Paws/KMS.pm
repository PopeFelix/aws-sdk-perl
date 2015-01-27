
use Paws::API;


package Paws::KMS {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'kms');
  has version => (is => 'ro', isa => 'Str', default => '2014-11-01');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'TrentService');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub CreateAlias {
    my $self = shift;
    return $self->do_call('Paws::KMS::CreateAlias', @_);
  }
  sub CreateGrant {
    my $self = shift;
    return $self->do_call('Paws::KMS::CreateGrant', @_);
  }
  sub CreateKey {
    my $self = shift;
    return $self->do_call('Paws::KMS::CreateKey', @_);
  }
  sub Decrypt {
    my $self = shift;
    return $self->do_call('Paws::KMS::Decrypt', @_);
  }
  sub DeleteAlias {
    my $self = shift;
    return $self->do_call('Paws::KMS::DeleteAlias', @_);
  }
  sub DescribeKey {
    my $self = shift;
    return $self->do_call('Paws::KMS::DescribeKey', @_);
  }
  sub DisableKey {
    my $self = shift;
    return $self->do_call('Paws::KMS::DisableKey', @_);
  }
  sub DisableKeyRotation {
    my $self = shift;
    return $self->do_call('Paws::KMS::DisableKeyRotation', @_);
  }
  sub EnableKey {
    my $self = shift;
    return $self->do_call('Paws::KMS::EnableKey', @_);
  }
  sub EnableKeyRotation {
    my $self = shift;
    return $self->do_call('Paws::KMS::EnableKeyRotation', @_);
  }
  sub Encrypt {
    my $self = shift;
    return $self->do_call('Paws::KMS::Encrypt', @_);
  }
  sub GenerateDataKey {
    my $self = shift;
    return $self->do_call('Paws::KMS::GenerateDataKey', @_);
  }
  sub GenerateDataKeyWithoutPlaintext {
    my $self = shift;
    return $self->do_call('Paws::KMS::GenerateDataKeyWithoutPlaintext', @_);
  }
  sub GenerateRandom {
    my $self = shift;
    return $self->do_call('Paws::KMS::GenerateRandom', @_);
  }
  sub GetKeyPolicy {
    my $self = shift;
    return $self->do_call('Paws::KMS::GetKeyPolicy', @_);
  }
  sub GetKeyRotationStatus {
    my $self = shift;
    return $self->do_call('Paws::KMS::GetKeyRotationStatus', @_);
  }
  sub ListAliases {
    my $self = shift;
    return $self->do_call('Paws::KMS::ListAliases', @_);
  }
  sub ListGrants {
    my $self = shift;
    return $self->do_call('Paws::KMS::ListGrants', @_);
  }
  sub ListKeyPolicies {
    my $self = shift;
    return $self->do_call('Paws::KMS::ListKeyPolicies', @_);
  }
  sub ListKeys {
    my $self = shift;
    return $self->do_call('Paws::KMS::ListKeys', @_);
  }
  sub PutKeyPolicy {
    my $self = shift;
    return $self->do_call('Paws::KMS::PutKeyPolicy', @_);
  }
  sub ReEncrypt {
    my $self = shift;
    return $self->do_call('Paws::KMS::ReEncrypt', @_);
  }
  sub RetireGrant {
    my $self = shift;
    return $self->do_call('Paws::KMS::RetireGrant', @_);
  }
  sub RevokeGrant {
    my $self = shift;
    return $self->do_call('Paws::KMS::RevokeGrant', @_);
  }
  sub UpdateKeyDescription {
    my $self = shift;
    return $self->do_call('Paws::KMS::UpdateKeyDescription', @_);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS - Perl Interface to AWS AWS Key Management Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



AWS Key Management Service

AWS Key Management Service (KMS) is an encryption and key management
web service. This guide describes the KMS actions that you can call
programmatically. For general information about KMS, see the AWS Key
Management Service Developer Guide

AWS provides SDKs that consist of libraries and sample code for various
programming languages and platforms (Java, Ruby, .Net, iOS, Android,
etc.). The SDKs provide a convenient way to create programmatic access
to KMS and AWS. For example, the SDKs take care of tasks such as
signing requests (see below), managing errors, and retrying requests
automatically. For more information about the AWS SDKs, including how
to download and install them, see Tools for Amazon Web Services.

We recommend that you use the AWS SDKs to make programmatic API calls
to KMS.

Clients must support TLS (Transport Layer Security) 1.0. We recommend
TLS 1.2. Clients must also support cipher suites with Perfect Forward
Secrecy (PFS) such as Ephemeral Diffie-Hellman (DHE) or Elliptic Curve
Ephemeral Diffie-Hellman (ECDHE). Most modern systems such as Java 7
and later support these modes.

B<Signing Requests>

Requests must be signed by using an access key ID and a secret access
key. We strongly recommend that you do not use your AWS account access
key ID and secret key for everyday work with KMS. Instead, use the
access key ID and secret access key for an IAM user, or you can use the
AWS Security Token Service to generate temporary security credentials
that you can use to sign requests.

All KMS operations require Signature Version 4.

B<Recording API Requests>

KMS supports AWS CloudTrail, a service that records AWS API calls and
related events for your AWS account and delivers them to an Amazon S3
bucket that you specify. By using the information collected by
CloudTrail, you can determine what requests were made to KMS, who made
the request, when it was made, and so on. To learn more about
CloudTrail, including how to turn it on and find your log files, see
the AWS CloudTrail User Guide

B<Additional Resources>

For more information about credentials and request signing, see the
following:

=over

=item * AWS Security Credentials. This topic provides general
information about the types of credentials used for accessing AWS.

=item * AWS Security Token Service. This guide describes how to create
and use temporary security credentials.

=item * Signing AWS API Requests. This set of topics walks you through
the process of signing a request using an access key ID and a secret
access key.

=back

B<Commonly Used APIs>

Of the APIs discussed in this guide, the following will prove the most
useful for most applications. You will likely perform actions other
than these, such as creating keys and assigning policies, by using the
console.

=over

=item * Encrypt

=item * Decrypt

=item * GenerateDataKey

=item * GenerateDataKeyWithoutPlaintext

=back










=head1 METHODS

=head2 CreateAlias()

  Arguments described in: L<Paws::KMS::CreateAlias>

  Returns: nothing

  

Creates a display name for a customer master key. An alias can be used
to identify a key and should be unique. The console enforces a
one-to-one mapping between the alias and a key. An alias name can
contain only alphanumeric characters, forward slashes (/), underscores
(_), and dashes (-). An alias must start with the word "alias" followed
by a forward slash (alias/). An alias that begins with "aws" after the
forward slash (alias/aws...) is reserved by Amazon Web Services (AWS).











=head2 CreateGrant()

  Arguments described in: L<Paws::KMS::CreateGrant>

  Returns: L<Paws::KMS::CreateGrantResponse>

  

Adds a grant to a key to specify who can access the key and under what
conditions. Grants are alternate permission mechanisms to key policies.
For more information about grants, see Grants in the developer guide.
If a grant is absent, access to the key is evaluated based on IAM
policies attached to the user.

=over

=item 1. ListGrants

=item 2. RetireGrant

=item 3. RevokeGrant

=back











=head2 CreateKey()

  Arguments described in: L<Paws::KMS::CreateKey>

  Returns: L<Paws::KMS::CreateKeyResponse>

  

Creates a customer master key. Customer master keys can be used to
encrypt small amounts of data (less than 4K) directly, but they are
most commonly used to encrypt or envelope data keys that are then used
to encrypt customer data. For more information about data keys, see
GenerateDataKey and GenerateDataKeyWithoutPlaintext.











=head2 Decrypt()

  Arguments described in: L<Paws::KMS::Decrypt>

  Returns: L<Paws::KMS::DecryptResponse>

  

Decrypts ciphertext. Ciphertext is plaintext that has been previously
encrypted by using any of the following functions:

=over

=item * GenerateDataKey

=item * GenerateDataKeyWithoutPlaintext

=item * Encrypt

=back

Note that if a caller has been granted access permissions to all keys
(through, for example, IAM user policies that grant C<Decrypt>
permission on all resources), then ciphertext encrypted by using keys
in other accounts where the key grants access to the caller can be
decrypted. To remedy this, we recommend that you do not grant
C<Decrypt> access in an IAM user policy. Instead grant C<Decrypt>
access only in key policies. If you must grant C<Decrypt> access in an
IAM user policy, you should scope the resource to specific keys or to
specific trusted accounts.











=head2 DeleteAlias()

  Arguments described in: L<Paws::KMS::DeleteAlias>

  Returns: nothing

  

Deletes the specified alias.











=head2 DescribeKey()

  Arguments described in: L<Paws::KMS::DescribeKey>

  Returns: L<Paws::KMS::DescribeKeyResponse>

  

Provides detailed information about the specified customer master key.











=head2 DisableKey()

  Arguments described in: L<Paws::KMS::DisableKey>

  Returns: nothing

  

Marks a key as disabled, thereby preventing its use.











=head2 DisableKeyRotation()

  Arguments described in: L<Paws::KMS::DisableKeyRotation>

  Returns: nothing

  

Disables rotation of the specified key.











=head2 EnableKey()

  Arguments described in: L<Paws::KMS::EnableKey>

  Returns: nothing

  

Marks a key as enabled, thereby permitting its use. You can have up to
25 enabled keys at one time.











=head2 EnableKeyRotation()

  Arguments described in: L<Paws::KMS::EnableKeyRotation>

  Returns: nothing

  

Enables rotation of the specified customer master key.











=head2 Encrypt()

  Arguments described in: L<Paws::KMS::Encrypt>

  Returns: L<Paws::KMS::EncryptResponse>

  

Encrypts plaintext into ciphertext by using a customer master key. The
C<Encrypt> function has two primary use cases:

=over

=item * You can encrypt up to 4 KB of arbitrary data such as an RSA
key, a database password, or other sensitive customer information.

=item * If you are moving encrypted data from one region to another,
you can use this API to encrypt in the new region the plaintext data
key that was used to encrypt the data in the original region. This
provides you with an encrypted copy of the data key that can be
decrypted in the new region and used there to decrypt the encrypted
data.

=back

Unless you are moving encrypted data from one region to another, you
don't use this function to encrypt a generated data key within a
region. You retrieve data keys already encrypted by calling the
GenerateDataKey or GenerateDataKeyWithoutPlaintext function. Data keys
don't need to be encrypted again by calling C<Encrypt>.

If you want to encrypt data locally in your application, you can use
the C<GenerateDataKey> function to return a plaintext data encryption
key and a copy of the key encrypted under the customer master key (CMK)
of your choosing.











=head2 GenerateDataKey()

  Arguments described in: L<Paws::KMS::GenerateDataKey>

  Returns: L<Paws::KMS::GenerateDataKeyResponse>

  

Generates a data key that you can use in your application to locally
encrypt data. This call returns a plaintext version of the key in the
C<Plaintext> field of the response object and an encrypted copy of the
key in the C<CiphertextBlob> field. The key is encrypted by using the
master key specified by the C<KeyId> field. To decrypt the encrypted
key, pass it to the C<Decrypt> API.

We recommend that you use the following pattern to locally encrypt
data: call the C<GenerateDataKey> API, use the key returned in the
C<Plaintext> response field to locally encrypt data, and then erase the
plaintext data key from memory. Store the encrypted data key (contained
in the C<CiphertextBlob> field) alongside of the locally encrypted
data.

You should not call the C<Encrypt> function to re-encrypt your data
keys within a region. C<GenerateDataKey> always returns the data key
encrypted and tied to the customer master key that will be used to
decrypt it. There is no need to decrypt it twice.

If you decide to use the optional C<EncryptionContext> parameter, you
must also store the context in full or at least store enough
information along with the encrypted data to be able to reconstruct the
context when submitting the ciphertext to the C<Decrypt> API. It is a
good practice to choose a context that you can reconstruct on the fly
to better secure the ciphertext. For more information about how this
parameter is used, see Encryption Context.

To decrypt data, pass the encrypted data key to the C<Decrypt> API.
C<Decrypt> uses the associated master key to decrypt the encrypted data
key and returns it as plaintext. Use the plaintext data key to locally
decrypt your data and then erase the key from memory. You must specify
the encryption context, if any, that you specified when you generated
the key. The encryption context is logged by CloudTrail, and you can
use this log to help track the use of particular data.











=head2 GenerateDataKeyWithoutPlaintext()

  Arguments described in: L<Paws::KMS::GenerateDataKeyWithoutPlaintext>

  Returns: L<Paws::KMS::GenerateDataKeyWithoutPlaintextResponse>

  

Returns a data key encrypted by a customer master key without the
plaintext copy of that key. Otherwise, this API functions exactly like
GenerateDataKey. You can use this API to, for example, satisfy an audit
requirement that an encrypted key be made available without exposing
the plaintext copy of that key.











=head2 GenerateRandom()

  Arguments described in: L<Paws::KMS::GenerateRandom>

  Returns: L<Paws::KMS::GenerateRandomResponse>

  

Generates an unpredictable byte string.











=head2 GetKeyPolicy()

  Arguments described in: L<Paws::KMS::GetKeyPolicy>

  Returns: L<Paws::KMS::GetKeyPolicyResponse>

  

Retrieves a policy attached to the specified key.











=head2 GetKeyRotationStatus()

  Arguments described in: L<Paws::KMS::GetKeyRotationStatus>

  Returns: L<Paws::KMS::GetKeyRotationStatusResponse>

  

Retrieves a Boolean value that indicates whether key rotation is
enabled for the specified key.











=head2 ListAliases()

  Arguments described in: L<Paws::KMS::ListAliases>

  Returns: L<Paws::KMS::ListAliasesResponse>

  

Lists all of the key aliases in the account.











=head2 ListGrants()

  Arguments described in: L<Paws::KMS::ListGrants>

  Returns: L<Paws::KMS::ListGrantsResponse>

  

List the grants for a specified key.











=head2 ListKeyPolicies()

  Arguments described in: L<Paws::KMS::ListKeyPolicies>

  Returns: L<Paws::KMS::ListKeyPoliciesResponse>

  

Retrieves a list of policies attached to a key.











=head2 ListKeys()

  Arguments described in: L<Paws::KMS::ListKeys>

  Returns: L<Paws::KMS::ListKeysResponse>

  

Lists the customer master keys.











=head2 PutKeyPolicy()

  Arguments described in: L<Paws::KMS::PutKeyPolicy>

  Returns: nothing

  

Attaches a policy to the specified key.











=head2 ReEncrypt()

  Arguments described in: L<Paws::KMS::ReEncrypt>

  Returns: L<Paws::KMS::ReEncryptResponse>

  

Encrypts data on the server side with a new customer master key without
exposing the plaintext of the data on the client side. The data is
first decrypted and then encrypted. This operation can also be used to
change the encryption context of a ciphertext.











=head2 RetireGrant()

  Arguments described in: L<Paws::KMS::RetireGrant>

  Returns: nothing

  

Retires a grant. You can retire a grant when you're done using it to
clean up. You should revoke a grant when you intend to actively deny
operations that depend on it. The following are permitted to call this
API:

=over

=item * The account that created the grant

=item * The C<RetiringPrincipal>, if present

=item * The C<GranteePrincipal>, if C<RetireGrant> is a grantee
operation

=back











=head2 RevokeGrant()

  Arguments described in: L<Paws::KMS::RevokeGrant>

  Returns: nothing

  

Revokes a grant. You can revoke a grant to actively deny operations
that depend on it.











=head2 UpdateKeyDescription()

  Arguments described in: L<Paws::KMS::UpdateKeyDescription>

  Returns: nothing

  

Updates the description of a key.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

