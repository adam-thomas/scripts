#!/bin/bash

# Remove crap
sudo apt-get remove unity-lens-shopping unity-scope-musicstores

# Update first
sudo apt-get update
sudo apt-get upgrade

# Install packages
sudo apt-get install git tig python-dev python3-dev build-essential \
libjpeg-dev libpng12-dev zsh gparted gimp \
ubuntu-restricted-extras vlc ttf-mscorefonts-installer sqlite \
quicksynergy postgresql-server-dev-all ack-grep sparkleshare \
memcached libmemcached-dev nautilus-open-terminal libxml2-dev libxslt-dev \
tree python-pip postgresql-client postgresql postgresql-contrib \
nodejs nodejs-legacy npm autoconf bison ruby ruby-dev rbenv fontforge

sudo pip install virtualenv virtualenvwrapper
sudo npm install -g bower grunt-cli
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# Install zsh
sudo apt-get install zsh
sudo wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
chsh -s /bin/zsh

# Make zsh and hub play nice together
mkdir -p ~/.oh-my-zsh/plugins/hub
curl https://raw.githubusercontent.com/github/hub/master/etc/hub.zsh_completion > ~/.oh-my-zsh/plugins/hub/_hub

# Set up Ruby and Compass and other frontend stuff
rbenv install 2.1.2
rbenv global 2.1.2
git clone git://github.com/jf/rbenv-gemset.git $HOME/.rbenv/plugins/rbenv-gemset
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
sudo REALLY_GEM_UPDATE_SYSTEM=1 gem update --system
eval "$(rbenv init -)"
gem install compass
gem install sass
gem install bundler
rbenv rehash

# Install Heroku Toolbelt
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# Download Sublime Text 3
# (latest version at time of writing)
# (needs actual installation)
wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3083_amd64.deb

# Install Powerline fonts
pip install --user powerline-status

# Download git completion scripts and put them in the right place
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash ~ZSH/custom/_git/git-completion.bash
wget https://github.com/git/git/raw/master/contrib/completion/git-completion.zsh ~ZSH/custom/_git/git-completion.zsh

# Get scripts directory and wire things up
cd
git clone https://github.com/adam-incuna/scripts.git
cd scripts/shell-config-backups
cp .bash_aliases .zshrc .gitconfig .gitignore ~
cp -f agnoster.zsh-theme ~/.oh-my-zsh/themes/agnoster.zsh-theme

# Make a work directory
mkdir ~/Projects

# Restart the shell
zsh

# Other things to do
echo "Other things to set up:"
echo "  Chrome"
echo "  Hub at https://github.com/github/hub/releases"
echo "  Meldium, AdBlock and GitHub Notifier extensions"
echo "  Register an SSH key for GitHub at https://github.com/settings/ssh (instructions at https://help.github.com/articles/generating-ssh-keys/)"
echo "  Change terminal font to Meslo Powerline so that agnoster renders properly"
echo "  Setup Charlie's PSQL hack at http://meshy.co.uk/posts/postgresql-without-passwords/"
echo "  Add SublimeText licence and extensions"
echo "  PyCharm"
echo "  Get ~/.pypirc config file from the internal wiki"
echo "  Reboot at least once"
