PASSWD=$1

sudo apt install mysql-server-8.0 -y

sudo systemctl start mysql.service

sudo systemctl enable mysql.service

sudo mysql -uroot -p <<-EOF
CREATE USER 'aadil'@'localhost' IDENTIFIED BY '${PASSWD:=password}';
GRANT ALL ON *.* TO 'aadil'@'localhost';
EOF