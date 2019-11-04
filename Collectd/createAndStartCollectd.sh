#!/bin/bash 

cat /etc/collectd/collectd.template | envsubst '${GRAPHITE_HOST}' > /etc/collectd/collectd.conf

exec /usr/sbin/collectd -f
