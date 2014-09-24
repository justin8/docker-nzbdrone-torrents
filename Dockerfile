FROM dock0/arch
MAINTAINER justin@dray.be

RUN curl -O https://repo.dray.be/dray-repo-0.7-1-any.pkg.tar.xz
RUN pacman -U --noconfirm dray-repo-0.7-1-any.pkg.tar.xz
RUN pacman -Syq --noprogressbar --noconfirm nzbdrone-torrents

VOLUME "/config"

EXPOSE 8989
CMD /usr/bin/nzbdrone -nobrowser -data=/config
