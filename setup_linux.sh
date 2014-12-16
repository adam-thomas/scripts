#!/bin/bash

# Remove crap
sudo apt-get remove unity-lens-shopping unity-scope-musicstores

# Install packages
sudo apt-get install git tig python-dev python3-dev build-essential \
libjpeg-dev libpng12-dev zsh gnome-shell gparted gimp \
ubuntu-restricted-extras vlc ttf-mscorefonts-installer sqlite ruby \
quicksynergy postgresql-server-dev-all ack-grep sparkleshare \
memcached libmemcached-dev nautilus-open-terminal libxml2-dev libxslt-dev \
tree python-pip virtualenv postgresql-client postgresql postgresql-contrib \
gnome-tweak-tool nodejs npm ruby ruby-build

sudo pip install virtualenvwrapper
sudo npm install -g bower grunt-cli

# Install zsh
sudo wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
sudo chsh -s /bin/zsh

# Install hub
cd
mkdir Applications
git clone https://github.com/github/hub.git
cd hub
git checkout 1.12-stable
sudo gem install hub

# Make zsh and hub play nice together
mkdir -p ~/.oh-my-zsh/plugins/hub
curl https://raw.githubusercontent.com/github/hub/master/etc/hub.zsh_completion > ~/.oh-my-zsh/plugins/hub/_hub

# Set up Ruby and Compass
rbenv install 2.1.1
rbenv global 2.1.1
eval "$(rbenv init -)"
gem update --system
gem install compass
rbenv rehash

# Download Sublime Text 3
# (latest version at time of writing)
wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3065_amd64.deb

# Install Powerline fonts
cd
git clone git@github.com:Lokaltog/powerline-fonts.git
sudo sh powerline-fonts/install.sh

# Download git completion scripts and put them in the right place
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash ~ZSH/custom/_git/git-completion.bash
wget https://github.com/git/git/raw/master/contrib/completion/git-completion.zsh ~ZSH/custom/_git/git-completion.zsh

# Get scripts directory and wire things up
cd
git clone git@github.com:adam-incuna/scripts.git
cd scripts/shell-config-backups
cp .bash_aliases .zshrc .gitconfig .gitignore ~
cp -f agnoster.zsh-theme ~/.oh-my-zsh/themes/agnoster.zsh-theme
# cp -f Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

# Restart the shell again
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