#
# !!! Do this all on the old computer you're migrating from!
#
# Note: This will result in a file to transfer to your new machine (~/migration.zip)
#

# Copypasta this file into your terminal bit-by-bit.
# Don't just run it. You want to pay attention to the details.
echo "Do not run this script directly. Hit Ctrl-C __NOW__ then go read it."
read -n 1

###############################################################################
# Backup old machine dotfiles and config                                        #
###############################################################################

mkdir -p ~/migration/home
cd ~/migration

cp -R ~/.ssh ~/migration/home
cp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/migration  # Wifi/VPN
cp ~/Library/Preferences/com.tinyspeck.slackmacgap.plist ~/migration
cp ~/Library/Containers/com.microsoft.rdc.mac/Data/Library/Preferences/com.microsoft.rdc.mac.plist ~/migration
cp -R ~/Documents ~/migration
cp ~/.bash_history ~/migration
cp ~/.bashrc ~/migration
cp ~/.zsh_history ~/migration
cp ~/.zshrc ~/migration
cp ~/.vimrc ~/migration
cp ~/.gitconfig.local ~/migration
cp -R ~/.config/valet ~/migration # Laravel site local hosting
cp ~/.add-identity ~/migration
cp ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme ~/migration
cp -R ~/z ~/migration
cp -R ~/.vim ~/migration
cp ~/.config/karabiner/karabiner.json ~/migration

# Sequel Pro favourite queries & DB connections
mkdir -p ~/migration/sequelpro
cp ~/Library/Application\ Support/Sequel\ Pro/Data/Favorites.plist ~/migration/sequelpro
cp ~/Library/Preferences/com.sequelpro.SequelPro.plist ~/migration/sequelpro

# Visual Studio Code settings and extensions
# Ideally, use settings sync. If not, use this:
#mkdir -p ~/migration/vscode
#cp ~/.vscode ~/migration/vscode
#cp "~/Library/Application Support/Code/User" ~/migration/vscode

# Postman settings & collections
# See https://stackoverflow.com/questions/51102373/backup-postman-configuration-to-file-environment-and-settings/51102374
# Postman has a built-in mechanism for dumping settings. Use that.
# Place the output json into ~/migration

# iTerm2 settings
# See https://stackoverflow.com/questions/22943676/how-to-export-iterm2-profiles#:~:text=If%20you%20have%20a%20look,after%20you%20reinstalled%20your%20OS.
# iTerm2 has a built-in mechanism for dumping settings. Use that.
# Choose the output folder as ~/migration (com.googlecode.iterm2.plist should go here)

###############################################################################
# Compress migration for transfer                                             #
###############################################################################

zip -vr ~/migration.zip ~/migration -x "*.DS_Store"
