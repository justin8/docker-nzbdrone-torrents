FROM justin8/alpine
MAINTAINER justin@dray.be

RUN echo "@testing http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk add --update mono@testing && \
    rm -rf /var/cache/apk/*

RUN wget -O sonarr.tar.gz http://download.sonarr.tv/v2/develop/mono/NzbDrone.develop.tar.gz && \
    tar zxf sonarr.tar.gz && \
    rm sonarr.tar.gz

RUN wget -qO - http://download.sonarr.tv/v2/develop/mono/ | \
    grep -o '[0-9][0-9.]*.mono.tar.gz' | \
    tail -n1 | \
    grep -o '^[0-9.]*[0-9]' > /version

VOLUME "/config"

EXPOSE 8989
CMD /usr/bin/mono /NzbDrone/NzbDrone.exe -nobrowser -data=/config
