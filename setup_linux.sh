#!/bin/bash

# Remove crap
sudo apt-get remove unity-lens-shopping unity-scope-musicstores

# Install packages
sudo apt-get install git tig python-dev python3-dev build-essential \
libjpeg-dev libpng12-dev zsh gnome-shell gparted gimp \
ubuntu-restricted-extras vlc ttf-mscorefonts-installer sqlite ruby \
quicksynergy postgresql-server-dev-all ack-grep sparkleshare \
memcached libmemcached-dev nautilus-open-terminal libxml2-dev libxslt-dev \
tree python-pip virtualenv virtualenvwrapper rbenv postgresql-client \
postgresql postgresql-contrib gnome-tweak-tool nodejs npm

sudo pip install virtualenvwrapper
sudo npm install -g bower grunt-cli

# Install zsh
sudo wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
sudo chsh -s /bin/zsh

# Download hub and unzip it in the right place
wget https://github.com/github/hub/releases/download/v2.2.0-preview1/hub_2.2.0-preview1_darwin_amd64.gz.tar hub.gz.tar
mkdir ~/Applications
unzip hub.gz.tar ~/Applications/hub

# Download Sublime Text 3
# (latest version at time of writing)
wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3065_amd64.deb

# Install Powerline fonts
cd
git clone git@github.com:Lokaltog/powerline-fonts.git
sh powerline-fonts/install.sh

# Get scripts directory and wire things up
cd
git clone git@github.com:adam-incuna/scripts.git
cd scripts/shell-config-backups
cp .bash_aliases .zshrc ~
cp -f agnoster.zsh-theme ~/.oh-my-zsh/themes/agnoster.zsh-theme

# Restart the shell
zsh

# Other things to do
echo "Other things to set up:"
echo "  Chrome"
echo "  LastPass, AdBlock and GitHub Notifier extensions"
echo "  SSH key for GitHub"
echo "  Change terminal font to Meslo Powerline so that agnoster renders properly"
echo "  Setup Charlie's PSQL hack at http://meshy.co.uk/posts/postgresql-without-passwords/"
echo "  Add SublimeText licence"
echo "  Install and configure GNOME taskbar extension (use Firefox, Chrome doesn't like the installer)"
echo "  Reboot at least once"