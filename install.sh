echo "Get the dependencies"
sleep 3
apt-get -y remove ffmpeg x264 libav-tools libvpx-dev libx264-dev
apt-get update -y
apt-get install sudo -y
apt-get install screen -y
sudo add-apt-repository ppa:mc3man/trusty-media -y


# install ffmpeg
echo "install ffmpeg"
sleep 3
sudo apt-get install ffmpeg gstreamer0.10-ffmpeg -y
ffmpeg --version
sleep 3
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
apt-get install curl -y
curl https://yt-dl.org/latest/youtube-dl -o /usr/local/bin/youtube-dl
chmod a+x /usr/local/bin/youtube-dl
youtube-dl

#install eyeD3
apt-get install eyeD3 -y
eyeD3 --version
