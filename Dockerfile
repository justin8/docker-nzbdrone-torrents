FROM justin8/archlinux
MAINTAINER justin@dray.be

RUN pacman -Sq --noprogressbar --noconfirm nzbdrone-torrents

VOLUME "/config"

EXPOSE 8989
CMD /usr/bin/nzbdrone -nobrowser -data=/config
