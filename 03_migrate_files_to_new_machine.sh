#
# !!! Do this all on the new computer you're migrating to!
#
# Note: This assumes that migration.zip is in the users Downloads folder (~/Downloads.migration.zip)
#

# Copypasta this file into your terminal bit-by-bit.
# Don't just run it. You want to pay attention to the details.
echo "Do not run this script directly. Hit Ctrl-C __NOW__ then go read it."
read -n 1

###############################################################################
# Uncompress migration                                                        #
###############################################################################

mkdir -p ~/migration
unzip ~/Downloads/migration.zip -d ~/migration

###############################################################################
# Backup old machine dotfiles and config                                        #
###############################################################################

cd ~/migration

#cp -R ~/migration/home/.ssh ~ # Be sure you want to do this. Overwriting these is disastrous!
cp ~/migration/com.apple.airport.preferences.plist /Library/Preferences/SystemConfiguration  # Wifi/VPN
cp ~/migration/com.tinyspeck.slackmacgap.plist ~/Library/Preferences
cp ~/migration/com.microsoft.rdc.mac.plist ~/Library/Containers/com.microsoft.rdc.mac/Data/Library/Preferences
cp -R ~/migration/Documents ~
cp ~/migration/.bash_history ~
cp ~/migration/.bashrc ~
cp ~/migration/.zsh_history ~
cp ~/migration/.zshrc ~
cp ~/migration/.vimrc ~
cp ~/migration/.gitconfig.local ~
cp -R ~/migration/valet ~/.config # Laravel site local hosting
cp ~/migration/.add-identity ~
cp ~/migration/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme
cp -R ~/migration/z ~
cp -R ~/migration/.vim ~
cp ~/migration/karabiner.json ~/.config/karabiner

# Sequel Pro favourite queries & DB connections
cp ~/migration/sequelpro/Favorites.plist ~/Library/Application\ Support/Sequel\ Pro/Data
cp ~/migration/sequelpro/com.sequelpro.SequelPro.plist ~/Library/Preferences

# Visual Studio Code settings and extensions
# Ideally, use settings sync. If not, use this:
#mkdir -p ~/migration/vscode
#cp ~/.vscode ~/migration/vscode
#cp "~/Library/Application Support/Code/User" ~/migration/vscode

# Postman settings & collections
# See https://stackoverflow.com/questions/51102373/backup-postman-configuration-to-file-environment-and-settings/51102374
# Postman has a built-in mechanism for importing settings. Use that.
# Place the output json into ~/migration

# iTerm2 settings
# See https://stackoverflow.com/questions/22943676/how-to-export-iterm2-profiles#:~:text=If%20you%20have%20a%20look,after%20you%20reinstalled%20your%20OS.
# iTerm2 has a built-in mechanism for importing settings. Use that.
# Choose the output folder as ~/migration (com.googlecode.iterm2.plist should go here)
