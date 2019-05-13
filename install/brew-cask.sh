#!/bin/bash

# Install Caskroom
brew cask
brew tap homebrew/cask-drivers

# Install packages
apps=(
    dropbox
    dash
    #imagealpha
    imageoptim
    iterm2
    atom
    firefox
    google-chrome
    opera
    #malwarebytes-anti-malware
    #kaleidoscope
    macdown
    spotify
    skype
    slack
    zoomus
    steam
    sonos
    postman
    sequel-pro
    sketch
    backblaze
    sublime-text
    microsoft-office
    visual-studio-code
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
#brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook
