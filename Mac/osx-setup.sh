# #################################################################
#
# The MWC script is made to work on Mac OS.
# Written to be used on 64 bits computers
#
# Original Author   : Gabriel Kanev
# Website           : http://www.mrgkanev.eu
#
# Version           : 1.0.2
# Start date        : 28/04/2018
# Last modified date: 28/05/2019
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#					IT CAN BRAKE THINGS
#
###################################################################

# Creating SSH Key
echo "Creating an SSH key for you..."
ssh-keygen -t rsa

echo "Please add this public key to Github \n"
echo "https://github.com/account/ssh \n"
read -p "Press [Enter] key after this..."

# Installing xcode
echo "Installing xcode-stuff"
xcode-select --install

# Install homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
echo "Updating homebrew..."
brew update
xargs brew install < brew.txt

# Adding Git to the system
echo "Installing Git..."
brew install git

# Adding Git information
echo "Git config"
git config --global user.name "mrgkanev"
git config --global user.email contact@mrgkanev.eu


brew install htop zsh vim
brew install tmux reattach-to-user-namespace

echo "Installing brew git utilities..."
brew install git-extras
brew install legit
brew install wget
brew install trash
brew install mackup
brew install node

# Lets clean the stuff up
echo "Cleaning up brew"
brew cleanup

# Create code directory
mkdir -p ~/code

# Lastly adding oh my fish
echo "Installing The Fishshell Framework"
curl -L https://get.oh-my.fish | fish

#Adding the theme 
echo "Adding my favourite theme (Bob the fish)"
omf install bobthefish

# You'll be able to install any app you want from here on, not just Mac App Store apps
sudo spctl --master-disable
sudo defaults write /var/db/SystemPolicy-prefs.plist enabled -string no
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Saving to disk by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Check for software updates daily
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Setting the icon size of Dock items to 36 pixels for optimal
defaults write com.apple.dock tilesize -int 36

# Enabling UTF-8 and setting the Pro theme by default"
defaults write com.apple.terminal StringEncodings -array 4
defaults write com.apple.Terminal "Default Window Settings" -string "Pro"
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"

# Setting screenshots format to PNG 
defaults write com.apple.screencapture type -string "png"

# Enabling Safari's debug menu 
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

