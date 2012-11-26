#!/bin/bash

PW=$1

# Initiate correction
chronyc <<EOF &> /dev/null
password $PW
trimrtc
EOF

sleep 15

# Write settings to file and show result
chronyc <<EOF &> /tmp/chrony.log
password $PW
writertc
rtcdata
EOF


