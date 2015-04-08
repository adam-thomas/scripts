# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

# Install packages of all kinds
brew install Caskroom/cask/java ack ag gist git git-extras hub libmemcached nmap solr \
watch wget python python3 zsh Caskroom/cask/vlc sparkleshare libxml2-dev libxslt-dev \
tree Caskroom/cask/xquartz nodejs npm autoconf bison ruby rbenv

brew cask install google-chrome lastpass postgres python3 sublime-text-3 steam vlc iterm2

# Python asked for this when I installed it... *shrug*
mkdir -p $HOME/Library/Python/2.7/lib/python/site-packages
echo 'import site; site.addsitedir("usr/local/lib/python2.7/site-packages")'

# Set up .gemrc
echo -e "---\n\nverbose: true\ngem: --no-ri --no-rdoc" > ~/.gemrc

# O hai pip
sudo easy_install pip
sudo pip install django dj-database-url fabric virtualenvwrapper

# Install zsh
sudo apt-get install zsh
sudo wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
chsh -s /bin/zsh

# Launch ZSH
zsh

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

# Install fontforge properly (it's broken on Mac)
# Thanks to Graham! https://github.com/grahamgilchrist/macos-compiled-fontforge/blob/master/README.md
cd
git clone https://github.com/grahamgilchrist/macos-compiled-fontforge.git macos-compiled-fontforge
brew install fontforge ttfautohint
rm -rf /usr/local/Cellar/fontforge /usr/local/Cellar/ttfautohint
mv macos-compiled-fontforge/fontforge /usr/local/Cellar/fontforge
mv macos-compiled-fontforge/ttfautohint /usr/local/Cellar/ttfautohint
brew link ttfautohint fontforge
rm -rf macos-compiled-fontforge

# Set up Ruby and Compass and other frontend stuff
sudo npm install -g bower grunt-cli
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 2.1.2
rbenv global 2.1.2
git clone git://github.com/jf/rbenv-gemset.git $HOME/.rbenv/plugins/rbenv-gemset
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
sudo REALLY_GEM_UPDATE_SYSTEM=1 gem update --system
eval "$(rbenv init -)"
sudo gem install compass sass bundler
rbenv rehash

# Install Heroku Toolbelt
wget -q https://toolbelt.heroku.com/install.sh | sh

# Download Sublime Text 3
# (latest version at time of writing)
# (needs actual installation)
wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203083.dmg

# Install Powerline fonts
cd
git clone https://github.com/Lokaltog/powerline-fonts.git
sudo sh powerline-fonts/install.sh

# Download git completion scripts and put them in the right place
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash ~ZSH/custom/_git/git-completion.bash
wget https://github.com/git/git/raw/master/contrib/completion/git-completion.zsh ~ZSH/custom/_git/git-completion.zsh

# Get scripts directory and wire things up
cd
git clone https://github.com/adam-incuna/scripts.git
cd scripts/shell-config-backups
cp .bash_aliases .zshrc .gitconfig .gitignore ~
cp -f agnoster.zsh-theme ~/.oh-my-zsh/themes/agnoster.zsh-theme
cp -f Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

# Make a work directory
mkdir ~/Projects

# Restart the shell again
zsh

# Other things to do
echo "Other things to set up:"
echo "  Chrome"
echo "  LastPass, AdBlock and GitHub Notifier extensions"
echo "  Register an SSH key for GitHub at https://github.com/settings/ssh (instructions at https://help.github.com/articles/generating-ssh-keys/)"
echo "  Change terminal font to Meslo Powerline so that agnoster renders properly"
echo "  Setup Charlie's PSQL hack at http://meshy.co.uk/posts/postgresql-without-passwords/"
echo "  Add SublimeText licence and extensions"
echo "  Install and configure GNOME taskbar extension (use Firefox, Chrome doesn't like the installer)"
echo "  Hoard"
echo "  Get ~/.pypirc config file from the internal wiki"
echo "  Reboot at least once"
