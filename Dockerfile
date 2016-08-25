# using https://hub.docker.com/r/abiosoft/caddy/
FROM abiosoft/caddy:php

# load Caddyfile
ADD Caddyfile /etc/Caddyfile

# load in phpLiteAdmin code
COPY . /srv
