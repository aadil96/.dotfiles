# dir on linux
alias dls="cd ~/Downloads"
alias hstead="cd ~/Development/Homestead"
alias dev="cd ~/Development"

# dir on windows
alias winhome="/mnt/c/Users/agwan"
alias winroot="/mnt/c"
alias laragon="/mnt/c/laragon/www"

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
alias guser="git config user.name $1"
alias gemail="git config user.email $1"
alias gclone="git clone $1"
alias gs="git status"

# miscellaneous
alias bright="xrandr --output eDP --brightness $1"

# laravel
alias pa="php artisan"
alias punitf="./vendor/bin/phpunit --testsuite Feature"
alias punitu="./vendor/bin/phpunit --testsuite Unit"
alias punit="./vendor/bin/phpunit --filter $1"
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

# docker

alias dcup="docker-compose up -d"
alias dck="docker"
alias dckps="docker ps"
alias dclogs="docker-compose logs"
alias dcbuild="docker-compose build $1"
alias dckexec="docker exec -it"
alias dcdown="docker-compose down"
alias dckim="docker images"

# php

function php74() {
    sudo update-alternatives --set php /usr/bin/php7.4
    sudo update-alternatives --set php-config /usr/bin/php-config7.4
    sudo update-alternatives --set phpize /usr/bin/phpize7.4
}
