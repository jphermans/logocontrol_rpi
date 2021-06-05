FROM debian:buster
LABEL description="LogoControl RPI4"

COPY content/logocontrol-pi-0.5.2.tgz /tmp/
COPY content/run.sh /opt/

RUN tar xvzf /tmp/logocontrol-pi-0.5.2.tgz -C /opt/

RUN export DEBIAN_FRONTEND=noninteractive \
        && apt-get update \
        && apt-get upgrade -y \
        && apt-get autoremove \
        && apt-get install -y less \
        && apt-get install -y wget \
        && apt-get install -y nginx

RUN  wget http://www.frickelzeugs.de/mono-3.10-armhf.deb
RUN  dpkg -i mono-3.10-armhf.deb

COPY content/config.xml /opt/LogoControl/data/

EXPOSE 80

ENTRYPOINT ["/opt/run.sh"]
