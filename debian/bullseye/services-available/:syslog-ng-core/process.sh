#!/bin/bash -e
log-helper level eq trace && set -x

PIDFILE="/run/syslog-ng.pid"
SYSLOGNG_OPTS=""

[ -r /etc/default/syslog-ng ] && . /etc/default/syslog-ng

exec /usr/sbin/syslog-ng --foreground --pidfile "${PIDFILE}" ${SYSLOGNG_OPTS}
