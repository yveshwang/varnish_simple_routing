#!/bin/bash
SERVER=./server.sh
HOSTPORT=${DUMMY_PORT:-8133}

echo "listening on $HOSTPORT"

while $SERVER | nc -4 -l $HOSTPORT
        do date
done
