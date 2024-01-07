#!/usr/bin/env bash

name="$1"
echo "deleting $name"
sudo deluser asr48
sudo rm -R /home/$name
sudo rm -R /var/www/html/$name
