# Shell configuration practicalities
alias rlsh="source ~/.zshrc"
alias rlzsh="source ~/.zshrc"
alias rlbash="source ~/.bashrc"
alias rlalias="source ~/.bash_aliases"
alias esh="nano ~/.zshrc"
alias ezsh="nano ~/.zshrc"
alias ebash="nano ~/.bashrc"
alias ealias="nano ~/.bash_aliases"
alias csc="cd ~/scripts"
alias bsh=backup-shell

create_branch() {
    git stash;
    git checkout master;
    git pull;
    git checkout -b $1;
    git stash pop;
}

# Git
alias g=git
alias ga="g add"
alias gaa="g add -A"
alias gcam="g commit --amend"
alias gb="g branch"
alias gc="g checkout"
alias gcb="g checkout -b"
alias gcb+=create_branch
alias gcl="g clone"
alias gcv="g commit -v"
alias gca="g commit -av"
alias gcp="g cherry-pick"
alias gd="g diff"
alias gf="g fetch"
alias gl="g log"
alias gm="g checkout master"
alias gmp="g checkout master; g pull"
alias gmg="g merge master"
alias gp="g pull"
alias gps="g push"
alias gsp=gps
alias gpr="g pull-request"
alias gr="g reset"
alias grh="g reset HEAD"
alias gs="g status -s"
alias gst="g stash"
alias gstp="g stash pop"
alias gsu="g submodule update"

# NPM/Yarn
alias ni="npm install"
alias ns="npm start"
alias y="yarn"
alias ya="yarn add"
alias ys="yarn start"
alias yw="yarn watch"

# Heroku
alias h="heroku"
alias hl="heroku logs -t"
alias hr="heroku run"
alias hrp="heroku run python manage.py"
alias hrm="heroku run python manage.py migrate"
alias hrs="heroku run python manage.py shell"
alias hrsync="heroku run python manage.py syncdb"
alias hps="git push heroku master"

# Virtualenv help
alias dv="deactivate && cd ~/Projects"
alias mkenv="python3 -m venv ."
alias mkvenv=mkenv
alias av="source bin/activate"

# Python work
alias py="python"
alias pm="python manage.py"
alias pt="pm test"
alias pms="pm shell"
alias pms+="pm shell_plus"
alias pmm="pm migrate"
alias pmsm="pm schemamigration"
alias pmdm="pm datamigration"
alias pmkm="pm makemigrations"
alias pmsync="pm syncdb"
alias pmsync+="pmsync --all"
alias pmserv="pm runserver"
alias pmserv+="pm runserver_plus"
alias pmsv="DEBUG=1 pm runserver_plus"
alias pmsv-="pm runserver"
alias pmreset="pm reset_db"
alias pmuser="pm createsuperuser"
alias pmload="pm loaddata"
alias preqs="pip install -r requirements.txt"
alias preqs+="pip install -r dev_requirements.txt"
alias pipr="pip install -r"
alias pipi="pip install"
alias pipf="pip freeze"
alias pipu="pip uninstall"
alias pdir="make-python-dir"
alias f8="flake8 ."

# Installed stuff
find_installed() {
    echo -n "Searching pip: "
    echo $(pip freeze 2>/dev/null | grep $1)
    echo -n "Searching npm: "
    echo $(npm list --depth=0 2>/dev/null | grep $1)
}

# Database shortcuts
refresh_db() {
    psql -c "drop database $1;" && psql -c "create database $1;"
}

# Makefiles
alias m="make"
alias mt="make test"
alias md="make deploy"
alias mr="make runserver"
alias mm="make migrate"
alias mkm="make migrations"

# Other usefuls
alias ack="ack-grep"
alias nt="nautilus ."
alias mount-dropbox="sudo mount -t vboxsf -o uid=1000,gid=1000 Dropbox ~/dropbox"
alias mntdbx=mount-dropbox
alias chrm="chromium-browser --allow-file-access-from-files"
