# #################################################################
#
# The MWC script is made to work on Mac OS.
# Written to be used on M based CPU's (Apple's new architecture)
#
# Original Author   : Gabriel Kanev
# Website           : https://www.mrgkanev.eu
#
# Version           : 1.0.3
# Start date        : 28/04/2018
# Last modified date: 18/05/2023
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

# Installing sh*t with brew
brew bundle

# Lets clean the stuff up
echo "Cleaning up brew"
brew cleanup

# Create code directory
mkdir -p ~/code


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

