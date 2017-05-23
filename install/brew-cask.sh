#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
    dropbox
    flux
    # dash
    imagealpha
    imageoptim
    iterm2
    atom
    firefox
    google-chrome
    # malwarebytes-anti-malware
    kaleidoscope
    macdown
    spotify
    skype
    slack
    cloud
    zoomus
    steam
    sonos
    postman
    sequel-pro
    sketch
    backblaze
    sublime-text2
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook
