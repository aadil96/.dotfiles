#!/bin/bash
if [ "$(id -u)" == 0 ]; then echo "Ansible should be installed as root user." >&2; exit 1; fi

# sudo apt install software-properties-common -y

# sudo apt-add-repository --yes --update ppa:ansible/ansible

# sudo apt install ansible -y

# ansible --version

# Install using python

sudo apt install python3-pip -y

python3 -m pip install --user ansible
