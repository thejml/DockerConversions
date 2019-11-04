FROM ubuntu:18.04

RUN apt-get update; apt-get install vim curl gettext-base -y

RUN apt-get install collectd -y

COPY collectd.template /etc/collectd/
COPY createAndStartCollectd.sh /
RUN chmod 755 /createAndStartCollectd.sh

CMD ["/createAndStartCollectd.sh"]
