# Version 0.0.1
# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install ack ctags git imagemagick mongodb htop zsh vim macvim elixir
brew install tmux reattach-to-user-namespace

# Use cask for installing GUI apps
brew install caskroom/cask/brew-cask
brew cask install dropbox iterm2 seil sublime-text

# Create code directory
mkdir -p ~/code
