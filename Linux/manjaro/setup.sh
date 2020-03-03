# #################################################################
#
# The MWC script is made to work on Manjaro.
# Written to be used on 64 bits computers
#
# Original Author   : Gabriel Kanev
# Website           : http://www.mrgkanev.eu
#
# Version           : 1.0.0
# Start date        : 01/03/2020
# Last modified date: 01/03/2020
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#					IT CAN BRAKE A LOT OF THINGS
#
###################################################################

# Update the system
sudo pacman -Syyuu
sudo pacman -Syu
sudo pacman -Syyu

# Install required software
pacman -Ss build-essential autoconf postgresql mutt parcellite alarm-clock gtimelog irssi shutter htop git-gui vifm libgmp3c2 libgmpxx4ldbl libgmp3-dev imagemagick libmagickcore-dev libmagickcore4 libmagickcore4-extra libmagickwand-dev libmagickwand4 -y
pacman -Ss meld autojump trayer xloadimage banshee gnome-do beanstalkd -y
pacman -Ss -y nodejs
pacman -Ss -y npm
pacman -Ss snapd -y

# These lines need to be changed with your own credentials
git config --global user.name "mrgkanev"
git config --global user.email "contact@mrgkanev.eu"


# Let's install some media stuff
echo "Installing the media stuff"
pacman -Ss vlc -y
pacman -Ss ubuntu-restricted-extras -y




# So this is still a prototype. Not all of the software is here but im still testing and i got the idea at Saturday 23:30 ... And had to go to a party ... 
# Edited (21.05.2018): The party was a really good one.