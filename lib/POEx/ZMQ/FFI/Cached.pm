package POEx::ZMQ::FFI::Cached;
$POEx::ZMQ::FFI::Cached::VERSION = '0.004001';
use Carp;
use strictures 1;

use Scalar::Util 'blessed';

our %Cache;

sub get {
  my (undef, $classtype, $soname) = @_;
  confess "Expected cached obj type and soname"
    unless defined $classtype and defined $soname;
  $Cache{ $classtype . $soname }
}

sub set {
  my (undef, $classtype, $soname, $callable_ffi) = @_;

  confess "Expected cached obj type, soname, and Callable FFI obj"
    unless defined $classtype
    and    defined $soname
    and    blessed $callable_ffi
    and    $callable_ffi->isa('POEx::ZMQ::FFI::Callable');

  $Cache{ $classtype . $soname } = $callable_ffi
}

sub clear {
  my (undef, $classtype, $soname) = @_;
  confess "Expected cached obj type and soname"
    unless defined $classtype and defined $soname;
  delete $Cache{ $classtype . $soname }
}

1;

=pod

=for Pod::Coverage .*

=cut
