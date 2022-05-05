which docker > /dev/null

if [ $? -eq 0 ]; then
    echo "Docker is already installed in path: $(which docker)"
else
    sudo apt-get update

	sudo apt-get install -y \
		ca-certificates \
		curl \
		gnupg \
		lsb-release

	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

	echo \
	"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
	$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

	sudo apt-get update -y

 	sudo apt-get install -y docker-ce docker-ce-cli containerd.io
fi

# sudo docker pull mysql:8.0
# sudo docker pull composer:latest
# sudo docker pull composer:2.2.12
# sudo docker pull nginx:1.21.6
# sudo docker pull php:8.1-fpm
# sudo docker pull php:8.1.5-fpm-alpine3.15
# sudo docker pull node:18.0.0-buster-slim
# sudo docker pull node:18.0.0-alpine3.15