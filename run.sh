#!/bin/sh
set -xve

# turn off globbing
set -f

# start p910nd service
# -f: use user-supplied device
# -b: bidirectional communication
# -d: run in foreground
p910nd -f $LP_DEVICE -b -d
