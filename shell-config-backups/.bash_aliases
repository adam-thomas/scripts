# Shell configuration practicalities
alias rlsh="source ~/.zshrc"
alias rlzsh="source ~/.zshrc"
alias rlbash="source ~/.bashrc"
alias rlalias="source ~/.bash_aliases"
alias esh="subl ~/.zshrc"
alias ezsh="subl ~/.zshrc"
alias ebash="subl ~/.bashrc"
alias ealias="subl ~/.bash_aliases"
alias csc="cd ~/scripts"
alias scrpt="subl ~/scripts; ealias"
alias s=scrpt
alias scrpt+="scrpt; csc"
alias s+="scrpt; csc"
alias bsh=backup-shell

# Git
alias git=hub
alias g=hub
alias ga="g add"
alias gaa="g aa"
alias gc="g co"
alias gcb="g cob"
alias gcb+="g stash && g co master && g pull && g cob && g stash pop"
alias gcvf="g commit -v"
alias gcv="f8 && g commit -v"
alias gca="f8 && g commit -av"
alias gm="g checkout master"
alias gmp="g co master; g pull"
alias gmg="g merge master"
alias gp="g pull"
alias gps="g push"
alias gpr="g pull-request"
alias gr="g reset"
alias grh="g reset HEAD"
alias gs="g ss"

# Heroku
alias hr="heroku run"
alias hrp="heroku run python manage.py"
alias hrm="heroku run python manage.py migrate"
alias hrs="heroku run python manage.py shell"
alias hrsync="heroku run python manage.py syncdb"

# Virtualenv help
alias venv="source venv-launcher"
alias ve="venv '${PWD##*/}'"
alias dv="deactivate && cd ~/Projects"
alias rmvenv="source venv-delete"
alias sv="ve && pmserv+"

# Django help
alias mkuser="python manage.py shell < ~/scripts/make_superuser.py"

# Other project management
alias getvars="hoard get | sed 's/^/EXPORT /' > .env"
alias dg=dumping-ground
alias cdg="source change-to-dumping-ground"

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
alias pmsv+="pm runserver_plus"
alias pmsv="export DEBUG=1; pm runserver_plus"
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

# Makefiles
alias m="make"
alias mt="make test"
alias md="make deploy"
alias mt8="f8; mt"

# Other usefuls
alias minecraft="java -jar ~/Downloads/Minecraft.jar"
# alias ffs="sudo $(fc -ln -1)"  # apparently this doesn't work either...
alias sb="subl ."
alias ack="ack-grep"
alias ackp="ack-grep --type=python"
alias nt="nautilus ."
alias mount-dropbox="sudo mount -t vboxsf -o uid=1000,gid=1000 Dropbox ~/dropbox"
alias mntdbx=mount-dropbox
