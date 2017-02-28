# using https://hub.docker.com/r/abiosoft/caddy/
FROM abiosoft/caddy:php

# essential php libs to run phpLiteAdmin
RUN apk add --no-cache php7-pdo_sqlite

# load Caddyfile
ADD Caddyfile /etc/Caddyfile

# load in phpLiteAdmin code
COPY . /srv
