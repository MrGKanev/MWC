# Version 0.0.1
#script to install all the required software

#update the system
sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get upgrade -y

#install required software
sudo apt-get install curl git-core build-essential autoconf postgresql mutt parcellite alarm-clock gtimelog irssi shutter vlc htop git-gui vifm libgmp3c2 libgmpxx4ldbl libgmp3-dev imagemagick libmagickcore-dev libmagickcore4 libmagickcore4-extra libmagickwand-dev libmagickwand4 -y
sudo apt-get install meld autojump trayer xloadimage banshee gnome-do beanstalkd redis-server -y


echo "install dropbox"


# So this is still a prototype. Not all of the software is here but im still testing and i got the idea at Saturday 23:30 ... And had to go to a party ...