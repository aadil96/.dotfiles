#!/bin/sh

set -e

#* Install AWS CLI v2 if not already installed

hash aws &> /dev/null
if [ $? -eq 1 ]
then
	echo "Installing aws cli v2.."
	sudo apt-get update -y

	sudo apt-get install unzip groff less -y

	curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

	unzip awscliv2.zip

	./aws/install -i /usr/local/aws-cli -b /usr/bin
else
	echo "aws cli v2 is already installed"
fi

#* Create aws credential and config file
if [ ! -d ~/.aws ]
then
	mkdir ~/.aws
	echo ".aws dir is created in path ~"
	echo "[default]\naws_access_key_id=\naws_secret_access_key=" > ~/.aws/credentials
	echo "credential file created in path ~/.aws"
	echo "[default]" > ~/.aws/config
	echo "config file created in path ~/.aws"
else
	echo ".aws directory exists in ~/.aws"
fi
