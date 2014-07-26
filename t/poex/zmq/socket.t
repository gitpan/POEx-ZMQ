use Test::More;
use strict; use warnings FATAL => 'all';

use Time::HiRes ();

use List::Objects::WithUtils;

use POE;
use POEx::ZMQ;
use POEx::ZMQ::Constants -all;

my $endpt = "ipc:///tmp/test-poex-zmq-$$";


my $Got = hash;
my $Expected = hash(
  'rtr got 3 items'     => 1,
  'rtr got id'          => 1,
  'null part empty'     => 1,
  'multipart body ok'   => 1,
  'single-part body ok' => 1,
  'rtr got second msg'  => 1,
);


alarm 20;

POE::Session->create(
  package_states => [
    main => [ qw/
      _start
      timeout

      check_if_done

      router_req_setup

      zmq_connect_added
      zmq_bind_added

      zmq_recv
      zmq_recv_multipart
    / ],
  ],
);

sub check_if_done {
  # FIXME call a stop if Got and Expected key counts match, reissue alarm if not
  if ($Got->keys->count == $Expected->keys->count) {
    diag "Matching key counts, exiting loop";
    $_[HEAP]->{$_}->stop for qw/rtr req/;
    $_[KERNEL]->alarm_remove_all;
  } else {
    $_[KERNEL]->delay_set( check_if_done => 0.5 );
  }
}

sub _start {
  $_[KERNEL]->sig( ALRM => 'timeout' );
  $_[KERNEL]->yield('check_if_done');

  $_[HEAP]->{ctx} = POEx::ZMQ->context;

  $_[HEAP]->{rtr} = POEx::ZMQ::Socket->new(
    context => $_[HEAP]->{ctx},
    type    => ZMQ_ROUTER,
  )->start;

  $_[HEAP]->{req} = POEx::ZMQ::Socket->new(
    context => $_[HEAP]->{ctx},
    type    => ZMQ_REQ,
  )->start;
  
#  $_[KERNEL]->call( $_->alias, subscribe => 'all' )
#    for $_[HEAP]->{rtr}, $_[HEAP]->{req};

  $_[KERNEL]->yield( 'router_req_setup' );
}

sub router_req_setup {
  diag "Issuing connect, bind";

  $_[HEAP]->{req}->connect($endpt);

  $_[HEAP]->{rtr}->bind($endpt);

  $_[HEAP]->{req}->yield(
    sub { 
      diag "Issuing send"; 
      $_[OBJECT]->send( 'foo' ) 
    }
  );
}

sub zmq_connect_added {
  diag "Got connect_added";
  # FIXME
}

sub zmq_bind_added {
  diag "Got bind_added";
  # FIXME
}

my $done = 0;
sub zmq_recv {
  diag "Got recv";

  my $msg = $_[ARG0];

  $Got->set('single-part body ok' => 1) if $msg eq 'bar';

  $_[KERNEL]->post( $_[SENDER], send => 'bar' ) unless $done++;
}

sub zmq_recv_multipart {
  my $parts = $_[ARG0];

  diag "Got recv_multipart";

  $Got->set('rtr got 3 items' => 1) if $parts->count == 3;

  my ($id, $nul, $content) = $parts->all;
  $Got->set('rtr got id' => 1) if defined $id;
  $Got->set('null part empty' => 1) if $nul eq '';
  $Got->set('multipart body ok' => 1) if $content eq 'foo';
  $Got->set('rtr got second msg' => 1) if $content eq 'bar';

  # send_multipart (+ test from posted send)
  $_[KERNEL]->post( $_[SENDER], send_multipart =>
    [ $id, '', 'bar' ]
  );
}


sub timeout {
  $_[KERNEL]->alarm_remove_all;
  fail "Timed out!"; diag explain $Got; exit 1
}

POE::Kernel->run;

is_deeply $Got, $Expected, 'async socket tests ok'
  or diag explain $Got;

done_testing
