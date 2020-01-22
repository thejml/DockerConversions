FROM ubuntu

RUN apt-get update; apt-get install unrar curl -y

RUN useradd -m mystic 
WORKDIR /home/mystic

COPY ./mystic.tar.gz /home/mystic
RUN tar zxvf mystic.tar.gz -C / 
# /\ This is the end result of \/
#RUN curl http://www.mysticbbs.com/downloads/mys112a43_l64.rar -o /home/mystic/mystic.rar && \
#    unrar x /home/mystic/mystic.rar #&& \
#    /home/mystic/install


