#!/bin/bash
docker run -d \
  --name=metricbeat \
  --user=root \
  --volume="$(pwd)/metricbeat.docker.yml:/usr/share/metricbeat/metricbeat.yml:ro" \
  --volume="/var/run/docker.sock:/var/run/docker.sock:ro" \
  --mount type=bind,source=/proc,target=/hostfs/proc,readonly \
  --mount type=bind,source=/sys/fs/cgroup,target=/hostfs/sys/fs/cgroup,readonly \
  --mount type=bind,source=/,target=/hostfs,readonly \
  --net=host \
  docker.elastic.co/beats/metricbeat:7.0.0-beta1 metricbeat -e -system.hostfs=/hostfs \
  -E output.elasticsearch.hosts=["127.0.0.1:9200"] 
