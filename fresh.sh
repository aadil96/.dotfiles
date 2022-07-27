
#!/bin/sh

echo "Setting up your linux machine..."

sudo apt update -y

sudo apt install zsh git ca-certificates nginx wget tree -y

sh $HOME/.dotfiles/create_dev_dirs.sh

sh $HOME/.dotfiles/install_nvm.sh

sh $HOME/.dotfiles/install_php.sh``

sh $HOME/.dotfiles/install_composer.sh

composer global require laravel/installer

composer global require "squizlabs/php_codesniffer=*"

sudo chmod +x $HOME/.dotfiles/clear-dirty

sudo ln -s $HOME/.dotfiles/clear-dirty /usr/local/bin/

sh ~/.dotfiles/install_zsh.sh
