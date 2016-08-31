#!/bin/bash

echo "Get the dependencies"
sleep 3
apt-get update -y
apt-get install sudo -y
apt-get install software-properties-common -y


# install ffmpeg
echo "install ffmpeg"
sleep 3
sudo add-apt-repository ppa:mc3man/trusty-media -y
sudo apt-get update -y
#sudo apt-get install ffmpeg gstreamer0.10-ffmpeg -y
#sudo add-apt-repository ppa:heyarje/libav-11 -y && 
sudo apt-get install ffmpeg -y
#sudo apt-get install libav-tools -y
ffmpeg 
sleep 3


##tambahan test##

sudo apt-get install yasm -y
sudo apt-get install libx264-dev -y
sudo apt-get install cmake mercurial -y
sudo apt-get install libmp3lame-dev -y
sudo apt-get install libopus-dev -y


##tambahan test##








apt-get install screen -y


# youtube-upload

echo "youtube-upload"
sleep 3
apt-get install python-pip -y 
wget --no-check-certificate https://bootstrap.pypa.io/ez_setup.py -O - | python
easy_install --upgrade google-api-python-client
wget https://github.com/tokland/youtube-upload/archive/master.zip
apt-get install unzip -y
unzip master.zip
cd youtube-upload-master
python setup.py install
cd ~
youtube-upload
sleep 3

# youtube-dl
echo "youtube-dl"
sleep 3
sudo wget https://yt-dl.org/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+x /usr/local/bin/youtube-dl
hash -r
youtube-dl

#install eyeD3
apt-get install eyeD3 -y
eyeD3 --version

# added file item

wget https://raw.githubusercontent.com/arsanto/auto/master/ad2 && chmod +x ad2
wget https://raw.githubusercontent.com/arsanto/auto/master/bin && chmod +x bin
wget https://raw.githubusercontent.com/arsanto/playtotxt/master/pl && chmod +x pl
wget https://raw.githubusercontent.com/arsanto/auto/master/remove && chmod +x remove

echo "finish"

