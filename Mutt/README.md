# Extra Files Required

To use this, you'll need to create a file like this named Gmail-mutt:

```
set ssl_starttls=yes
set ssl_force_tls=yes

set imap_user = 'myEmailAddress@gmail.com'
set imap_pass = 'ONETIMEPASSWORD'

set from='myEmailAddress@gmail.com'
set realname='My Awesome Name'

set folder = imaps://imap.gmail.com/
set spoolfile = imaps://imap.gmail.com/INBOX
set postponed="imaps://imap.gmail.com/[Gmail]/Drafts"

set header_cache = "~/.mutt/cache/headers"
set message_cachedir = "~/.mutt/cache/bodies"
set certificate_file = "~/.mutt/certificates"

set smtp_url = 'smtp://myEmail@gmail.com:ONETIMEPASSWORD@smtp.gmail.com:465/'

set move = no
set imap_keepalive = 900
```
