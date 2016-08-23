# using https://hub.docker.com/r/abiosoft/caddy/
FROM abiosoft/caddy:php

# load in phpLiteAdmin code
COPY . /srv