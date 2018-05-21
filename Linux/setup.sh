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
# Last modified date: 21/05/2018
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
sudo apt-get install curl git-core build-essential autoconf postgresql mutt parcellite alarm-clock gtimelog irssi shutter htop git-gui vifm libgmp3c2 libgmpxx4ldbl libgmp3-dev imagemagick libmagickcore-dev libmagickcore4 libmagickcore4-extra libmagickwand-dev libmagickwand4 -y
sudo apt-get install meld autojump trayer xloadimage banshee gnome-do beanstalkd redis-server -y
sudo apt-get install -y nodejs
sudo apt-get install -y npm
sudo apt-get install snapd -y

# These lines need to be changed with your own credentials
git config --global user.name "mrgkanev"
git config --global user.email "contact@mrgkanev.eu"

echo "install dropbox"

# Let's install some media stuff
echo "Installing the media stuff"
sudo apt-get install vlc -y
sudo apt-get install ubuntu-restricted-extras -y
sudo snap install spotify -y

# Customising things
echo "A bif of customising for Gnome"
sudo apt-get install gnome-tweak-tool -y

# Adding Sublime text 3 
echo "Lets install the IDE (sublime-text-3)"
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo apt-get update -y 
sudo apt-get install sublime-text-installer -y

# Fixing the Powerline
echo "Adding the better Powerline"
sudo apt-add-repository ppa:fish-shell/release-2 -y
sudo apt-get update -y
sudo apt-get install fish -y
echo" You need to switch to fish by hand: https://github.com/fish-shell/fish-shell "
# There will be a solution soon(hopefully)



# So this is still a prototype. Not all of the software is here but im still testing and i got the idea at Saturday 23:30 ... And had to go to a party ... 
# Edited (21.05.2018): The party was a really good one.