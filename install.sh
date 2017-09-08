#!/bin/sh

touch ~/.profile
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# casks

brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts

./formulae.sh
./casks.sh

# other installs
# TODO: get latest version of nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
xcode-select --install

./docker.sh
./config.sh
# aliases
# alias gpu=‘git pull && terminal-notifier -message "Git Pull complete"'

# TODO: reload env to get nvm
# nvm install 6
# nvm install 8
