#!/usr/bin/env bash

sudo apt install apache2 -y
sudo groupadd webuser
sudo apt install php php-mysql -y
sudo apt install zip unzip -y

sudo chmod 764 fixperms.sh
sudo chmod 764 backup.sh
sudo chmod 764 newuser.sh
sudo chmod 764 rmuser.sh

ssh-keygen -t student -m PEM

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update

mkdir ~/backup