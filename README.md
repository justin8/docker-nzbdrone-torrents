#Docker Couchpotato#
[![Run Status](https://api.shippable.com/projects/57cfd381bd15f30f00415c20/badge?branch=master)](https://app.shippable.com/projects/57cfd381bd15f30f00415c20)

This is a docker image for Sonarr's develop branch running on an Alpine linux container

##Usage##
Sonarr will run on port 8989 by default. (Use `-p 8989:8989`).
Sonarr configuration will be read from /config. Bind this directory to your host or a docker volume to make configuration changes permanent.
You will also need your downloads/media directories mounted wherever you would like.
