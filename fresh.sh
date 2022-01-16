
#!/bin/sh

echo "Setting up your linux machine..."

sudo apt update

sudo apt install zsh

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

chsh -s $(which zsh)

source ~/.zshrc

if [ ! -d ~/Development ]
then 
	mkdir ~/Development
fi

if [ ! -d ~/Development/Sites ]
then 
	mkdir ~/Development/Sites
fi
