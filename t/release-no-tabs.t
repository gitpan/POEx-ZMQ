
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.08

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/POEx/ZMQ.pm',
    'lib/POEx/ZMQ/Buffered.pm',
    'lib/POEx/ZMQ/Constants.pm',
    'lib/POEx/ZMQ/FFI.pm',
    'lib/POEx/ZMQ/FFI/Callable.pm',
    'lib/POEx/ZMQ/FFI/Context.pm',
    'lib/POEx/ZMQ/FFI/Error.pm',
    'lib/POEx/ZMQ/FFI/Role/ErrorChecking.pm',
    'lib/POEx/ZMQ/FFI/Socket.pm',
    'lib/POEx/ZMQ/Socket.pm',
    'lib/POEx/ZMQ/Types.pm',
    't/00-report-prereqs.dd',
    't/00-report-prereqs.t',
    't/00_available.t',
    't/ffi/context.t',
    't/ffi/socket.t',
    't/ffi/utils.t',
    't/poex/zmq.t',
    't/poex/zmq/constants.t',
    't/poex/zmq/socket.t',
    't/release-cpan-changes.t',
    't/release-dist-manifest.t',
    't/release-no-tabs.t',
    't/release-pod-coverage.t',
    't/release-pod-linkcheck.t',
    't/release-pod-syntax.t',
    't/release-synopsis.t'
);

notabs_ok($_) foreach @files;
done_testing;
