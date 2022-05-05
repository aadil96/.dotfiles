# Misc
alias locker="nohup /usr/bin/bitwarden &"
alias postman="nohup /opt/Postman/app/postman &"

# dir on linux
alias dls="cd ~/Downloads"
alias hstead="cd ~/Development/Homestead"
alias dev="cd ~/Development"
alias cr="clear"

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

function gclear() {
	git config --add oh-my-zsh.hide-status 1
	git config --add oh-my-zsh.hide-dirty 1
}

# miscellaneous
alias bright="xrandr --output eDP --brightness $1"

# laravel
alias pa="php artisan"
alias sa="sail artisan"
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
alias dcknikito="docker run --rm sullo/nikto"

# terraform

alias tf="terraform"
alias tfa="terraform apply"
alias tfp="terraform plan"
alias tfd="terraform destroy"

# golang

alias g="go"
alias ginit="go mod init $1"
alias gtidy="go mod tidy"
alias gr="go run ."

# php

function php74() {
    sudo update-alternatives --set php /usr/bin/php7.4
    sudo update-alternatives --set php-config /usr/bin/php-config7.4
    sudo update-alternatives --set phpize /usr/bin/phpize7.4
}

function lampup() {
	sudo service nginx start
	sudo service php7.4-fpm start
	sudo service mysql start
}

function lamprestart() {
	sudo service nginx restart
	sudo service php7.4-fpm restart
}

function lampdown() {
	sudo service nginx stop 
	sudo service php7.4-fpm stop
	sudo service mysql stop
}

function sqlup() {
	sudo service mysql start
}

function sqldown() {
	sudo service mysql stop
}

function php74() {
    sudo update-alternatives --set php /usr/bin/php7.4
#    sudo update-alternatives --set php-config /usr/bin/php-config7.4
#    sudo update-alternatives --set phpize /usr/bin/phpize7.4
}

function php80() {
    sudo update-alternatives --set php /usr/bin/php8.0
#    sudo update-alternatives --set php-config /usr/bin/php-config8.0
#    sudo update-alternatives --set phpize /usr/bin/phpize8.0
}
