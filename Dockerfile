FROM base/archlinux
MAINTAINER justin@dray.be

# Using this repo for both nzbdrone-torrents and currently mono 3.8 to fix issues in extra/mono-3.4
RUN curl -sO https://repo.dray.be/dray-repo-0.7-1-any.pkg.tar.xz
RUN pacman -U --noconfirm dray-repo-0.7-1-any.pkg.tar.xz
RUN pacman -Syq --noprogressbar --noconfirm nzbdrone-torrents

VOLUME "/config"

EXPOSE 8989
CMD /usr/bin/nzbdrone -nobrowser -data=/config
