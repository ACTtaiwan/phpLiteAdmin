# Dockerized phpLiteAdmin
This is a Dockerized flavor of phpLiteAdmin 1.9.6.

## What is phpLiteAdmin?
phpLiteAdmin is a web-based SQLite database admin tool written in PHP with support for SQLite3 and SQLite2. Following in the spirit of the flat-file system used by SQLite, phpLiteAdmin consists of a single source file, `phpliteadmin.php`, that after being deployed with the Docker container, is visited in a browser.

For more details see the [phpLiteAdmin README](phpLiteAdmin_README.md).

### phpLiteAdmin Links
* Website: http://www.phpliteadmin.org/
* Bitbucket: https://bitbucket.org/phpliteadmin/public/
* Demo - A live demo of phpLiteAdmin can be found here: http://demo.phpliteadmin.org/

## Setup
1. Open `phpliteadmin.config.php` in a text editor.
2. Modify the `$password` variable to be the password you want for gaining access to the phpLiteAdmin tool.
3. Build the image `$ docker build -t acttaiwan/phpliteadmin .`

Additional Configuration Options can be found in the [phpLiteAdmin README](phpLiteAdmin_README.md).

## Run
Replace the `/path/to/db/directory` below with the actual path where your db is. 
`$ docker run -it --rm -p 2015:2015 -v /path/to/db/directory:/db --name websql acttaiwan/phpliteadmin`

Access the admin page at http://localhost:2015/phpliteadmin.php

## Advanced Configuration
### Caddyfile
Port number, IP and other items can be set in the Caddyfile. See instructions on the [Caddy website](https://caddyserver.com/docs/caddyfile).

### Let's Encrypt Auto SSL
See the Docker hub [abiosoft/caddy](https://hub.docker.com/r/abiosoft/caddy/) page.