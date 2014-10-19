FROM justin8/archlinux
MAINTAINER justin@dray.be

RUN pacman -Syq --noprogressbar --noconfirm expect
ADD installer.sh /
RUN chmod +x /installer.sh; /installer.sh

VOLUME "/config"

EXPOSE 8989
CMD /usr/bin/nzbdrone -nobrowser -data=/config
