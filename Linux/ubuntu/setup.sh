# #################################################################
#
# The MWC script is made to work on Ubuntu.
# Written to be used on 64 bits computers
#
# Original Author   : Gabriel Kanev
# Website           : https://www.mrgkanev.eu
#
# Version           : 1.0.3
# Start date        : 28/04/2018
# Last modified date: 1/05/2020
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#					IT CAN BRAKE THINGS
#
###################################################################

# Update the system
echo "Welcome! Lets install some apps! :)"
sudo apt update
sudo apt dist-upgrade -y
sudo apt upgrade -y

# Enable Spaps
sudo apt install snapd -y
sudo snap install snapd - y

# Install required software
sudo apt install curl ffmpeg git-core build-essential autoconf postgresql mutt parcellite gtimelog irssi shutter htop git-gui vifm libgmp3c2 libgmpxx4ldbl libgmp3-dev imagemagick libmagickcore-dev libmagickcore4 libmagickcore4-extra libmagickwand-dev libmagickwand4 -y
sudo apt install meld autojump trayer xloadimage banshee gnome-do beanstalkd -y

# These lines need to be changed with your own credentials
git config --global user.name "mrgkanev"
git config --global user.email "contact@mrgkanev.eu"


# Let's install some media stuff
echo "Installing the media stuff"
sudo apt install vlc -y
sudo apt install ubuntu-restricted-extras -y
sudo snap install spotify -y

# Customizing things
echo "A bif of customization for Gnome"
sudo apt install gnome-tweak-tool -y

# Adding Visual Studio Code
echo "Lets install the IDE (Visual Studio Code)"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Fixing the Powerline
echo "Adding the better Powerline"
sudo apt install zsh -y
sudo apt install powerline fonts-powerline -y

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp ~/.yadm/zshrc ~/.zshrc
touch ./aliases-linux.sh
cp ~/.yadm/aliases-linux ~/.aliases
source ~/.aliases
source ~/.zshrc
touch ~/.zprofile
cp ~/.yadm/zprofile ~/.zprofile

echo "Installing Hugo"
sudo apt -y install hugo

echo "Installing the GitHub CLI"
curl -o ./gh.deb -L https://github.com/cli/cli/releases/download/v0.6.1/gh_0.6.1_linux_amd64.deb
sudo apt install -y git && sudo dpkg -i ./gh.deb
rm ./gh.deb


