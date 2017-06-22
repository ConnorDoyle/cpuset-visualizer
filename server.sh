#!/bin/sh


gen_topology_forever () {
  echo "Generating topology as seen from this process every second"
  while true;
  do
    lstopo --pid $$ --no-io --of svg > topology.svg.new
    mv topology.svg.new topology.svg
    /bin/sleep 1
  done;
}

gen_topology_forever &

PORT=${1:-"80"}
echo "Starting HTTP server on port $PORT"
python -m http.server $PORT
