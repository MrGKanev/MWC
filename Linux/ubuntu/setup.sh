# #################################################################
#
# The MWC script is made to work on Ubuntu.
# Written to be used on 64 bits computers
#
# Original Author   : Gabriel Kanev
# Website           : http://www.mrgkanev.eu
#
# Version           : 1.0.2
# Start date        : 28/04/2018
# Last modified date: 03/03/2020
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#					IT CAN BRAKE THINGS
#
###################################################################

# Update the system
sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get upgrade -y

# Install required software
sudo apt-get install curl git-core build-essential autoconf postgresql mutt parcellite gtimelog irssi shutter htop git-gui vifm libgmp3c2 libgmpxx4ldbl libgmp3-dev imagemagick libmagickcore-dev libmagickcore4 libmagickcore4-extra libmagickwand-dev libmagickwand4 -y
sudo apt-get install meld autojump trayer xloadimage banshee gnome-do beanstalkd -y

# These lines need to be changed with your own credentials
git config --global user.name "mrgkanev"
git config --global user.email "contact@mrgkanev.eu"


# Let's install some media stuff
echo "Installing the media stuff"
sudo apt-get install vlc -y
sudo apt-get install ubuntu-restricted-extras -y
sudo snap install spotify -y

# Customizing things
echo "A bif of customization for Gnome"
sudo apt-get install gnome-tweak-tool -y

# Adding Visual Studio Code
echo "Lets install the IDE (Visual Studio Code)"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Fixing the Powerline
echo "Adding the better Powerline"
sudo apt install zsh -y
sudo apt-get install powerline fonts-powerline -y
sudo apt-get install fish -y
echo" You need to switch to fish by hand: https://github.com/robbyrussell/oh-my-zsh.git "


