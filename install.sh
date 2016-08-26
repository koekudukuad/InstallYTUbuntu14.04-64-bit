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
apt-get update -y
sudo apt-get install ffmpeg gstreamer0.10-ffmpeg -y
ffmpeg --version
sleep 3


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

wget https://raw.githubusercontent.com/arsanto/auto/master/ad2 && chmod +x ad && ./ad2
wget https://raw.githubusercontent.com/arsanto/auto/master/bin && chmod +x bin
wget https://raw.githubusercontent.com/arsanto/playtotxt/master/pl && chmod +x pl
wget https://raw.githubusercontent.com/arsanto/auto/master/remove && chmod +x remove

echo "will reboot reboot 3 second"
sleep 3
reboot
