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
alias ga="git add"
alias gaa="git aa"
alias gc="git co"
alias gcb="git cob"
alias gcb+="git co master; git pull; git cob"
alias gcv="git commit -v"
alias gm="git checkout master"
alias gmp="git co master; git pull"
alias gmg="git merge master"
alias gp="git pull"
alias gps="git push"
alias gpr="git pr"
alias gr="git reset HEAD"
alias gs="git ss"

# Heroku
alias hr="heroku run"
alias hrp="heroku run python manage.py"
alias hrm="heroku run python manage.py migrate"
alias hrs="heroku run python manage.py shell"
alias hrsync="heroku run python manage.py syncdb"

# Virtualenv help
alias venv="source venv-launcher"
alias ve="venv '${PWD##*/}'"
alias dv="deactivate; cd ~/Projects"
alias rmvenv="source venv-delete"
alias sv="ve; pmserv+"

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
alias pdir="make-python-dir"
# alias f8="python3 -m flake8 ."
alias f8="flake8 ."

# Makefiles
alias m="make"
alias mt="make test"
alias md="make deploy"
alias mt8="f8; mt"

# Imperial Painter
alias restore-paint="cp -rf ~/dropbox/Game\ Design/Tabletop\ Street\ Fighter/Imperial\ Painter\ files/* ~/Projects/imperial-painter"

# Other usefuls
alias minecraft="java -jar ~/Downloads/Minecraft.jar"
# alias ffs="sudo $(fc -ln -1)"  # apparently this doesn't work either...
alias sb="subl ."
alias ack="ack-grep"
alias ackp="ack-grep --type=python"
alias nt="nautilus ."
alias mount-dropbox="sudo mount -t vboxsf -o uid=1000,gid=1000 Dropbox ~/dropbox"
alias mntdbx=mount-dropbox
