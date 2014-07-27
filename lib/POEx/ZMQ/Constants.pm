package POEx::ZMQ::Constants;
$POEx::ZMQ::Constants::VERSION = '0.000_004';
# Automatically generated by tools/gen_zmq_constants
use strict; use warnings FATAL => 'all';
require POSIX;
use parent 'Exporter::Tiny';
our @EXPORT = our @EXPORT_ALL = qw/
  ZMQ_RATE
  ZMQ_MORE
  ZMQ_RECOVERY_IVL
  ZMQ_PLAIN_SERVER
  ZMQ_DEALER
  ZMQ_DONTWAIT
  ZMQ_PLAIN
  ZMQ_FAIL_UNROUTABLE
  ZMQ_PLAIN_PASSWORD
  ZMQ_FORWARDER
  ZMQ_PROBE_ROUTER
  ZMQ_ROUTER_RAW
  ZMQ_EVENT_BIND_FAILED
  ZMQ_IPV4ONLY
  ZMQ_RCVTIMEO
  ZMQ_RCVHWM
  ZMQ_MAX_SOCKETS
  ZMQ_CURVE
  ZMQ_CURVE_SECRETKEY
  ZMQ_MAXMSGSIZE
  ZMQ_TCP_KEEPALIVE_CNT
  ZMQ_REP
  ZMQ_UNSUBSCRIBE
  ZMQ_POLLERR
  ZMQ_NOBLOCK
  ZMQ_IPV6
  ZMQ_IO_THREADS_DFLT
  ZMQ_NULL
  ZMQ_MECHANISM
  ZMQ_XREQ
  ZMQ_POLLITEMS_DFLT
  ZMQ_RECONNECT_IVL
  ZMQ_ROUTER
  ZMQ_XREP
  ZMQ_TCP_ACCEPT_FILTER
  ZMQ_EVENT_DISCONNECTED
  ZMQ_CURVE_PUBLICKEY
  ZMQ_BACKLOG
  ZMQ_IDENTITY
  ZMQ_REQ_RELAXED
  ZMQ_EVENT_CLOSED
  ZMQ_ROUTER_BEHAVIOR
  ZMQ_SUBSCRIBE
  ZMQ_XPUB
  ZMQ_PULL
  ZMQ_PUSH
  ZMQ_EVENT_LISTENING
  ZMQ_PAIR
  ZMQ_ROUTER_MANDATORY
  ZMQ_RECONNECT_IVL_MAX
  ZMQ_SNDHWM
  ZMQ_CONFLATE
  ZMQ_PUB
  ZMQ_SNDBUF
  ZMQ_IO_THREADS
  ZMQ_STREAM
  ZMQ_EVENT_MONITOR_STOPPED
  ZMQ_EVENT_CONNECTED
  ZMQ_MAX_SOCKETS_DFLT
  ZMQ_EVENT_ACCEPTED
  ZMQ_REQ
  ZMQ_CURVE_SERVERKEY
  ZMQ_HAUSNUMERO
  ZMQ_POLLIN
  ZMQ_MULTICAST_HOPS
  ZMQ_QUEUE
  ZMQ_TCP_KEEPALIVE_IDLE
  ZMQ_STREAMER
  ZMQ_LINGER
  ZMQ_SUB
  ZMQ_REQ_CORRELATE
  ZMQ_EVENT_CONNECT_DELAYED
  ZMQ_DELAY_ATTACH_ON_CONNECT
  ZMQ_TYPE
  ZMQ_XPUB_VERBOSE
  ZMQ_EVENT_CLOSE_FAILED
  ZMQ_EVENTS
  ZMQ_ZAP_DOMAIN
  ZMQ_FD
  ZMQ_SNDMORE
  ZMQ_EVENT_CONNECT_RETRIED
  ZMQ_TCP_KEEPALIVE
  ZMQ_EVENT_ACCEPT_FAILED
  ZMQ_XSUB
  ZMQ_LAST_ENDPOINT
  ZMQ_SNDTIMEO
  ZMQ_PLAIN_USERNAME
  ZMQ_RCVMORE
  ZMQ_POLLOUT
  ZMQ_CURVE_SERVER
  ZMQ_RCVBUF
  ZMQ_IMMEDIATE
  ZMQ_AFFINITY
  ZMQ_TCP_KEEPALIVE_INTVL
  EFSM
  EAFNOSUPPORT
  EADDRNOTAVAIL
  ECONNREFUSED
  ENOTSUP
  ECONNRESET
  EPROTONOSUPPORT
  ENOTCONN
  ENETUNREACH
  EADDRINUSE
  ETIMEDOUT
  ECONNABORTED
  ENOCOMPATPROTO
  EMTHREAD
  EMSGSIZE
  ETERM
  EHOSTUNREACH
  ENETDOWN
  ENETRESET
  ENOTSOCK
  EINPROGRESS
  ENOBUFS
  EAGAIN
  EFAULT
  EINTR
  EINVAL
/;

sub ZMQ_RATE () { 8 }
sub ZMQ_MORE () { 1 }
sub ZMQ_RECOVERY_IVL () { 9 }
sub ZMQ_PLAIN_SERVER () { 44 }
sub ZMQ_DEALER () { 5 }
sub ZMQ_DONTWAIT () { 1 }
sub ZMQ_PLAIN () { 1 }
sub ZMQ_FAIL_UNROUTABLE () { 33 }
sub ZMQ_PLAIN_PASSWORD () { 46 }
sub ZMQ_FORWARDER () { 2 }
sub ZMQ_PROBE_ROUTER () { 51 }
sub ZMQ_ROUTER_RAW () { 41 }
sub ZMQ_EVENT_BIND_FAILED () { 16 }
sub ZMQ_IPV4ONLY () { 31 }
sub ZMQ_RCVTIMEO () { 27 }
sub ZMQ_RCVHWM () { 24 }
sub ZMQ_MAX_SOCKETS () { 2 }
sub ZMQ_CURVE () { 2 }
sub ZMQ_CURVE_SECRETKEY () { 49 }
sub ZMQ_MAXMSGSIZE () { 22 }
sub ZMQ_TCP_KEEPALIVE_CNT () { 35 }
sub ZMQ_REP () { 4 }
sub ZMQ_UNSUBSCRIBE () { 7 }
sub ZMQ_POLLERR () { 4 }
sub ZMQ_NOBLOCK () { 1 }
sub ZMQ_IPV6 () { 42 }
sub ZMQ_IO_THREADS_DFLT () { 1 }
sub ZMQ_NULL () { 0 }
sub ZMQ_MECHANISM () { 43 }
sub ZMQ_XREQ () { 5 }
sub ZMQ_POLLITEMS_DFLT () { 16 }
sub ZMQ_RECONNECT_IVL () { 18 }
sub ZMQ_ROUTER () { 6 }
sub ZMQ_XREP () { 6 }
sub ZMQ_TCP_ACCEPT_FILTER () { 38 }
sub ZMQ_EVENT_DISCONNECTED () { 512 }
sub ZMQ_CURVE_PUBLICKEY () { 48 }
sub ZMQ_BACKLOG () { 19 }
sub ZMQ_IDENTITY () { 5 }
sub ZMQ_REQ_RELAXED () { 53 }
sub ZMQ_EVENT_CLOSED () { 128 }
sub ZMQ_ROUTER_BEHAVIOR () { 33 }
sub ZMQ_SUBSCRIBE () { 6 }
sub ZMQ_XPUB () { 9 }
sub ZMQ_PULL () { 7 }
sub ZMQ_PUSH () { 8 }
sub ZMQ_EVENT_LISTENING () { 8 }
sub ZMQ_PAIR () { 0 }
sub ZMQ_ROUTER_MANDATORY () { 33 }
sub ZMQ_RECONNECT_IVL_MAX () { 21 }
sub ZMQ_SNDHWM () { 23 }
sub ZMQ_CONFLATE () { 54 }
sub ZMQ_PUB () { 1 }
sub ZMQ_SNDBUF () { 11 }
sub ZMQ_IO_THREADS () { 1 }
sub ZMQ_STREAM () { 11 }
sub ZMQ_EVENT_MONITOR_STOPPED () { 1024 }
sub ZMQ_EVENT_CONNECTED () { 1 }
sub ZMQ_MAX_SOCKETS_DFLT () { 1023 }
sub ZMQ_EVENT_ACCEPTED () { 32 }
sub ZMQ_REQ () { 3 }
sub ZMQ_CURVE_SERVERKEY () { 50 }
sub ZMQ_HAUSNUMERO () { 156384712 }
sub ZMQ_POLLIN () { 1 }
sub ZMQ_MULTICAST_HOPS () { 25 }
sub ZMQ_QUEUE () { 3 }
sub ZMQ_TCP_KEEPALIVE_IDLE () { 36 }
sub ZMQ_STREAMER () { 1 }
sub ZMQ_LINGER () { 17 }
sub ZMQ_SUB () { 2 }
sub ZMQ_REQ_CORRELATE () { 52 }
sub ZMQ_EVENT_CONNECT_DELAYED () { 2 }
sub ZMQ_DELAY_ATTACH_ON_CONNECT () { 39 }
sub ZMQ_TYPE () { 16 }
sub ZMQ_XPUB_VERBOSE () { 40 }
sub ZMQ_EVENT_CLOSE_FAILED () { 256 }
sub ZMQ_EVENTS () { 15 }
sub ZMQ_ZAP_DOMAIN () { 55 }
sub ZMQ_FD () { 14 }
sub ZMQ_SNDMORE () { 2 }
sub ZMQ_EVENT_CONNECT_RETRIED () { 4 }
sub ZMQ_TCP_KEEPALIVE () { 34 }
sub ZMQ_EVENT_ACCEPT_FAILED () { 64 }
sub ZMQ_XSUB () { 10 }
sub ZMQ_LAST_ENDPOINT () { 32 }
sub ZMQ_SNDTIMEO () { 28 }
sub ZMQ_PLAIN_USERNAME () { 45 }
sub ZMQ_RCVMORE () { 13 }
sub ZMQ_POLLOUT () { 2 }
sub ZMQ_CURVE_SERVER () { 47 }
sub ZMQ_RCVBUF () { 12 }
sub ZMQ_IMMEDIATE () { 39 }
sub ZMQ_AFFINITY () { 4 }
sub ZMQ_TCP_KEEPALIVE_INTVL () { 37 }

no strict 'refs';
sub EFSM () { 
  defined &{'POSIX::EFSM'} ?
    &{'POSIX::EFSM'} : 156384763
}
sub EAFNOSUPPORT () { 
  defined &{'POSIX::EAFNOSUPPORT'} ?
    &{'POSIX::EAFNOSUPPORT'} : 156384723
}
sub EADDRNOTAVAIL () { 
  defined &{'POSIX::EADDRNOTAVAIL'} ?
    &{'POSIX::EADDRNOTAVAIL'} : 156384718
}
sub ECONNREFUSED () { 
  defined &{'POSIX::ECONNREFUSED'} ?
    &{'POSIX::ECONNREFUSED'} : 156384719
}
sub ENOTSUP () { 
  defined &{'POSIX::ENOTSUP'} ?
    &{'POSIX::ENOTSUP'} : 156384713
}
sub ECONNRESET () { 
  defined &{'POSIX::ECONNRESET'} ?
    &{'POSIX::ECONNRESET'} : 156384726
}
sub EPROTONOSUPPORT () { 
  defined &{'POSIX::EPROTONOSUPPORT'} ?
    &{'POSIX::EPROTONOSUPPORT'} : 156384714
}
sub ENOTCONN () { 
  defined &{'POSIX::ENOTCONN'} ?
    &{'POSIX::ENOTCONN'} : 156384727
}
sub ENETUNREACH () { 
  defined &{'POSIX::ENETUNREACH'} ?
    &{'POSIX::ENETUNREACH'} : 156384724
}
sub EADDRINUSE () { 
  defined &{'POSIX::EADDRINUSE'} ?
    &{'POSIX::EADDRINUSE'} : 156384717
}
sub ETIMEDOUT () { 
  defined &{'POSIX::ETIMEDOUT'} ?
    &{'POSIX::ETIMEDOUT'} : 156384728
}
sub ECONNABORTED () { 
  defined &{'POSIX::ECONNABORTED'} ?
    &{'POSIX::ECONNABORTED'} : 156384725
}
sub ENOCOMPATPROTO () { 
  defined &{'POSIX::ENOCOMPATPROTO'} ?
    &{'POSIX::ENOCOMPATPROTO'} : 156384764
}
sub EMTHREAD () { 
  defined &{'POSIX::EMTHREAD'} ?
    &{'POSIX::EMTHREAD'} : 156384766
}
sub EMSGSIZE () { 
  defined &{'POSIX::EMSGSIZE'} ?
    &{'POSIX::EMSGSIZE'} : 156384722
}
sub ETERM () { 
  defined &{'POSIX::ETERM'} ?
    &{'POSIX::ETERM'} : 156384765
}
sub EHOSTUNREACH () { 
  defined &{'POSIX::EHOSTUNREACH'} ?
    &{'POSIX::EHOSTUNREACH'} : 156384729
}
sub ENETDOWN () { 
  defined &{'POSIX::ENETDOWN'} ?
    &{'POSIX::ENETDOWN'} : 156384716
}
sub ENETRESET () { 
  defined &{'POSIX::ENETRESET'} ?
    &{'POSIX::ENETRESET'} : 156384730
}
sub ENOTSOCK () { 
  defined &{'POSIX::ENOTSOCK'} ?
    &{'POSIX::ENOTSOCK'} : 156384721
}
sub EINPROGRESS () { 
  defined &{'POSIX::EINPROGRESS'} ?
    &{'POSIX::EINPROGRESS'} : 156384720
}
sub ENOBUFS () { 
  defined &{'POSIX::ENOBUFS'} ?
    &{'POSIX::ENOBUFS'} : 156384715
}
sub EAGAIN () { 
  POSIX::EAGAIN
}
sub EFAULT () { 
  POSIX::EFAULT
}
sub EINTR () { 
  POSIX::EINTR
}
sub EINVAL () { 
  POSIX::EINVAL
}

1;
 # Generated at Sat Jul 26 13:11:22 2014

=pod

=head1 NAME

POEx::ZMQ::Constants - ZeroMQ (3 + 4) constants for use with POEx::ZMQ

=head1 SYNOPSIS

  # All ZeroMQ v3 + v4 constants:
  use POEx::ZMQ::Constants -all;
  # Specific constants:
  use POEx::ZMQ::Constants qw/ZMQ_ROUTER ZMQ_DEALER EINTR/;

=head1 DESCRIPTION

ZeroMQ constant exporter for use with L<POEx::ZMQ> applications.

Automatically generated from ZeroMQ version 3 & 4 headers.

Uses L<Exporter::Tiny>; look there for detailed import-related documentation.

C<E>-prefixed error constants should generally do the right thing, using the
ZeroMQ C<zmq.h> values if the POSIX constants are not available.

The complete list of exported constants:

=over

=item ZMQ_RATE

=item ZMQ_MORE

=item ZMQ_RECOVERY_IVL

=item ZMQ_PLAIN_SERVER

=item ZMQ_DEALER

=item ZMQ_DONTWAIT

=item ZMQ_PLAIN

=item ZMQ_FAIL_UNROUTABLE

=item ZMQ_PLAIN_PASSWORD

=item ZMQ_FORWARDER

=item ZMQ_PROBE_ROUTER

=item ZMQ_ROUTER_RAW

=item ZMQ_EVENT_BIND_FAILED

=item ZMQ_IPV4ONLY

=item ZMQ_RCVTIMEO

=item ZMQ_RCVHWM

=item ZMQ_MAX_SOCKETS

=item ZMQ_CURVE

=item ZMQ_CURVE_SECRETKEY

=item ZMQ_MAXMSGSIZE

=item ZMQ_TCP_KEEPALIVE_CNT

=item ZMQ_REP

=item ZMQ_UNSUBSCRIBE

=item ZMQ_POLLERR

=item ZMQ_NOBLOCK

=item ZMQ_IPV6

=item ZMQ_IO_THREADS_DFLT

=item ZMQ_NULL

=item ZMQ_MECHANISM

=item ZMQ_XREQ

=item ZMQ_POLLITEMS_DFLT

=item ZMQ_RECONNECT_IVL

=item ZMQ_ROUTER

=item ZMQ_XREP

=item ZMQ_TCP_ACCEPT_FILTER

=item ZMQ_EVENT_DISCONNECTED

=item ZMQ_CURVE_PUBLICKEY

=item ZMQ_BACKLOG

=item ZMQ_IDENTITY

=item ZMQ_REQ_RELAXED

=item ZMQ_EVENT_CLOSED

=item ZMQ_ROUTER_BEHAVIOR

=item ZMQ_SUBSCRIBE

=item ZMQ_XPUB

=item ZMQ_PULL

=item ZMQ_PUSH

=item ZMQ_EVENT_LISTENING

=item ZMQ_PAIR

=item ZMQ_ROUTER_MANDATORY

=item ZMQ_RECONNECT_IVL_MAX

=item ZMQ_SNDHWM

=item ZMQ_CONFLATE

=item ZMQ_PUB

=item ZMQ_SNDBUF

=item ZMQ_IO_THREADS

=item ZMQ_STREAM

=item ZMQ_EVENT_MONITOR_STOPPED

=item ZMQ_EVENT_CONNECTED

=item ZMQ_MAX_SOCKETS_DFLT

=item ZMQ_EVENT_ACCEPTED

=item ZMQ_REQ

=item ZMQ_CURVE_SERVERKEY

=item ZMQ_HAUSNUMERO

=item ZMQ_POLLIN

=item ZMQ_MULTICAST_HOPS

=item ZMQ_QUEUE

=item ZMQ_TCP_KEEPALIVE_IDLE

=item ZMQ_STREAMER

=item ZMQ_LINGER

=item ZMQ_SUB

=item ZMQ_REQ_CORRELATE

=item ZMQ_EVENT_CONNECT_DELAYED

=item ZMQ_DELAY_ATTACH_ON_CONNECT

=item ZMQ_TYPE

=item ZMQ_XPUB_VERBOSE

=item ZMQ_EVENT_CLOSE_FAILED

=item ZMQ_EVENTS

=item ZMQ_ZAP_DOMAIN

=item ZMQ_FD

=item ZMQ_SNDMORE

=item ZMQ_EVENT_CONNECT_RETRIED

=item ZMQ_TCP_KEEPALIVE

=item ZMQ_EVENT_ACCEPT_FAILED

=item ZMQ_XSUB

=item ZMQ_LAST_ENDPOINT

=item ZMQ_SNDTIMEO

=item ZMQ_PLAIN_USERNAME

=item ZMQ_RCVMORE

=item ZMQ_POLLOUT

=item ZMQ_CURVE_SERVER

=item ZMQ_RCVBUF

=item ZMQ_IMMEDIATE

=item ZMQ_AFFINITY

=item ZMQ_TCP_KEEPALIVE_INTVL

=item EFSM

=item EAFNOSUPPORT

=item EADDRNOTAVAIL

=item ECONNREFUSED

=item ENOTSUP

=item ECONNRESET

=item EPROTONOSUPPORT

=item ENOTCONN

=item ENETUNREACH

=item EADDRINUSE

=item ETIMEDOUT

=item ECONNABORTED

=item ENOCOMPATPROTO

=item EMTHREAD

=item EMSGSIZE

=item ETERM

=item EHOSTUNREACH

=item ENETDOWN

=item ENETRESET

=item ENOTSOCK

=item EINPROGRESS

=item ENOBUFS

=item EAGAIN

=item EFAULT

=item EINTR

=item EINVAL

=back

=head1 AUTHOR

Jon Portnoy <avenj@cobaltirc.org>

=cut

