#Docker Couchpotato#
[![Build Status](https://jenkins.dray.be/buildStatus/icon?job=docker_sonarr-develop)](https://jenkins.dray.be/job/docker_sonarr-develop)

This is a docker image for Sonarr's develop branch running on an Alpine linux container

##Usage##
Sonarr will run on port 8989 by default. (Use `-p 8989:8989`).
Sonarr configuration will be read from /config. Bind this directory to your host or a docker volume to make configuration changes permanent.
You will also need your downloads/media directories mounted wherever you would like.
