FROM ubuntu:latest

RUN apt-get update
RUN apt-get install curl vim mutt offlineimap fdm msmtp -y

RUN useradd email -m

RUN mkdir -p ~/.mutt/cache/headers && mkdir ~/.mutt/cache/bodies && touch ~/.mutt/certificates && touch ~/.mutt/muttrc && mkdir -p /var/mail/email

# This works for Gmail
COPY ./Gmail-mutt /home/email/.muttrc
COPY ./Gmail-mutt /home/email/.mutt/muttrc

RUN chown email: /home/email -R 
WORKDIR /home/email
USER email

CMD ['mutt']
