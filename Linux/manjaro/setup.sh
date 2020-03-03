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
# Last modified date: 03/03/2020
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

# Enabling AUR
echo "Enabling AUR"
sed --in-place "s/#EnableAUR/EnableAUR/" "/etc/pamac.conf"
sed --in-place "s/#CheckAURUpdates/CheckAURUpdates/" "/etc/pamac.conf"

# Install required software
pacman -Ss build-essential autoconf postgresql mutt parcellite alarm-clock gtimelog irssi shutter htop git-gui vifm imagemagick libmagickcore-dev libmagickcore4 libmagickcore4-extra libmagickwand-dev libmagickwand4 -y
pacman -Ss meld autojump trayer xloadimage banshee gnome-do beanstalkd -y
pacman -Ss -y nodejs
pacman -Ss -y npm

# These lines need to be changed with your own credentials
git config --global user.name "mrgkanev"
git config --global user.email "contact@mrgkanev.eu"


# Let's install some media stuff
echo "Installing the media stuff"
pacman -Ss vlc 

# Who dosn't love Docker?
echo "Installing Docker and all its beauty"
pacman -S docker
systemctl start docker
systemctl enable docker
echo "You should see a verion of Docker now!"
docker version
usermod -aG docker $USER