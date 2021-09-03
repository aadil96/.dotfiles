# dir
alias dls="cd ~/Downloads"
alias hstead="cd ~/Development/Homestead"
alias dev="cd ~/Development"

# vagrant
alias vussh="cd ~/Development/Homestead && vagrant up && vagrant ssh"
alias vup="vagrant up"
alias vssh="vagrant ssh"
alias vexit="vagrant halt && exit"
alias vhalt="vagrant halt"
alias vreload="vagrant reload --provision"

# git
alias gpull="git pull $1 $2"
alias gpush="git push $1 $2"
alias gseturl="git remote set-url origin https://$1:$2@github.com/$3/$4"
alias gaddurl="git remote add-url origin https://$1:$2@github.com/$3/$4"
alias guser="git config user.name $1"
alias gemail="git config user.email $1"

# miscellaneous
alias bright="xrandr --output eDP --brightness $1"
