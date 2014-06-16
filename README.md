README: 

SABnzbd - (http://sabnzbd.org/)

git clone git@github.com:to0w1r3d/docker-sabnzbd.git 

cd docker-sabnzbd

docker build -t sabnzbd .  

____________

VOLUME /config

VOLUME /data

VOLUME /movies

VOLUME /tv

VOLUME /audio

____________

docker run -d -h _hostname_ -v /_hostconfig_:/config -v /_hostdata_:/data -v /_hostmovielib_:/movies -v /_hosttvlib_:/tv -v /_hostaudiolib_:/audio -p 8080:8080 -p 9090:9090 sabnzbd
