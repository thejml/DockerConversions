ARG UBUNTU_VERSION
FROM ubuntu:$UBUNTU_VERSION

RUN apt-get update && apt-get install vim sudo curl -y

RUN echo 'deb [arch=amd64] http://repo.powerdns.com/ubuntu xenial-rec-40 main' > /etc/apt/sources.list.d/pdns.list \ 
    cp preferences-pdns /etc/apt/preferences.d/pdns

RUN curl https://repo.powerdns.com/FD380FBB-pub.asc | apt-key add - && \
    apt-get update && \
    apt-get install pdns-recursor -y

CMD ["/usr/sbin/pdns_recursor","--daemon=no"]
