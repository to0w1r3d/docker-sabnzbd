README: 

SABnzbd - (http://sabnzbd.org/)

git clone git@github.com:to0w1r3d/docker-sabnzbd.git 
cd docker-sabnzbd
docker build -t sabnzbd .  

docker run -d -h your_host_name -v /your_config_location:/config -v /your_videos_location:/data -p 8080:8080 -p 9090:9090 sabnzbd
