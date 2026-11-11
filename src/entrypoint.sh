#!/bin/sh
# TOS wrapper: LinuxServer s6 starts as root and su-execs to abc. Run the
# unmodified Overseerr node app directly as uid 1000 with writable config and
# temp directories.
set -u
set -e
mkdir -p /config /run/overseerr-temp
export CONFIG_DIRECTORY=/config
cd /app/overseerr
exec yarn start
