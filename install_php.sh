sudo apt install software-properties-common

sudo apt-get install -y language-pack-en-base
sudo locale-gen en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php -y

sudo apt update

sudo apt -y install php7.4 php8.0 php7.4-fpm php8.0-fpm php7.4-common php8.0-common php7.4-mbstring php8.0-mbstring php7.4-xml php8.0-xml php7.4-zip php8.0-zip php7.4-mysql php8.0-mysql php7.4-curl php8.0-curl php7.4-gd php8.0-gd php7.4-bcmath php8.0-bcmath php7.4-bz2 php8.0-bz2 php7.4-intl php8.0-intl php7.4-readline php8.0-readline php7.4-gmp php8.0-gmp