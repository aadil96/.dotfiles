# install zsh
sudo apt install zsh -y

# install ohmyzsh and change default shell to zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

if [ -d $HOME/.dotfiles ]
then
	rm ~/.zshrc
	sudo ln -s ~/.dotfiles/.zshrc ~/.zshrc
	sudo ln -s ~/.dotfiles/.zshrc ~/aliases.zsh
	sudo ln -s ~/.dotfiles/.zshrc ~/path.zsh
	# install zsh autosuggestion plugin
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

chsh -s $(which zsh)

source ~/.zshrc
