
#!/bin/sh

# dont run this script as sudo

echo "Setting up your linux machine..."

sudo apt update -y

sudo apt install zip zsh git ca-certificates nginx wget tree -y

sh ~/.dotfiles/create_dev_dirs.sh

sh ~/.dotfiles/install_nvm.sh

sh ~/.dotfiles/install_php.sh``

sh ~/.dotfiles/install_composer.sh

composer global require laravel/installer

composer global require "squizlabs/php_codesniffer=*"

sudo chmod +x ~/.dotfiles/clear-dirty

sudo ln -s ~/.dotfiles/clear-dirty /usr/local/bin/

sh ~/.dotfiles/install_zsh.sh
