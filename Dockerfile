FROM ubuntu:trusty
MAINTAINER to0w1r3d <to0w1r3d@gmail.com>
# Original: Tim Haak - https://hub.docker.com/u/timhaak/

RUN locale-gen en_US en_US.UTF-8

RUN apt-get -q update
RUN apt-mark hold initscripts udev plymouth mountall
RUN apt-get -qy --force-yes dist-upgrade

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty universe multiverse" >> /etc/apt/sources.list

RUN apt-get -q update

RUN apt-get install -qy --force-yes sabnzbdplus sabnzbdplus-theme-classic sabnzbdplus-theme-mobile sabnzbdplus-theme-plush par2 python-yenc unrar unzip 

VOLUME /config
VOLUME /data
VOLUME /movies
VOLUME /tv
VOLUME /audio

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

EXPOSE 8080 9090

ENTRYPOINT ["/start.sh"]
