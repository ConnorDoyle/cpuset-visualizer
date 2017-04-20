FROM python:3.4

ADD . /cpuset-visualizer
WORKDIR /cpuset-visualizer

# Install hwloc
RUN apt-get update && \
  apt-get install -y hwloc \
  && apt-get clean

ENTRYPOINT ["/cpuset-visualizer/server.sh"]
