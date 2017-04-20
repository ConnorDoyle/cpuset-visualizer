#!/bin/sh

echo "Generating topology as seen from this process"
lstopo --pid $$ --of svg > topology.svg

PORT=${1:-"80"}
echo "Starting HTTP server on port $PORT"
python -m http.server $PORT
