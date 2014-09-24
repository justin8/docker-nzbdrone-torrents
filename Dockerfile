FROM dock0/arch
MAINTAINER justin@dray.be

# Using this repo for both aura and currently mono 3.8 to fix issues in extra/mono-3.4
RUN curl -O https://repo.dray.be/dray-repo-0.7-1-any.pkg.tar.xz
RUN pacman -U --noconfirm dray-repo-0.7-1-any.pkg.tar.xz
RUN pacman -Syq --noprogressbar --noconfirm aura-bin
RUN aura -Aqx --noconfirm nzbdrone-torrents

VOLUME "/config"

EXPOSE 8989
CMD /usr/bin/nzbdrone -nobrowser -data=/config
