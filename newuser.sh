#!/usr/bin/env bash

name="$1"
echo "setting up $name"
sudo useradd -m -g webuser $name
sudo mkdir /home/$name/.ssh
sudo chmod 700 /home/$name/.ssh
sudo touch /home/$name/.ssh/authorized_keys
cat student.pub | sudo tee -a /home/$name/.ssh/authorized_keys
sudo chmod 644 /home/$name/.ssh/authorized_keys
sudo chown $name /home/$name/.ssh/authorized_keys
sudo chown $name /home/$name/.ssh


sudo ln -s /var/www/html/$name /home/$name/public_html
mkdir /var/www/html/$name
sudo chown $name /var/www/html/$name
echo "<h2>Welcome $name</h2>" | sudo tee /var/www/html/$name/index.html

sudo mkdir /home/$name/bin
sudo chmod 755 /home/$name/bin
echo "PATH=$HOME/bin" | sudo tee /home/$name/.bashrc
sudo ln -s /bin/ls /home/$name/bin/
sudo ln -s /bin/cp /home/$name/bin/
sudo ln -s /bin/mv /home/$name/bin/
sudo ln -s /bin/cd /home/$name/bin/

sudo chattr +i /home/$name/.bashrc


