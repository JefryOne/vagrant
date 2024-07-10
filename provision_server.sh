#!/bin/bash
# Установка OpenSSH Server
sudo apt-get update
sudo apt-get install -y openssh-server
# Настройка SSH для приема ключей
sudo mkdir -p /home/vagrant/.ssh
sudo chown vagrant:vagrant /home/vagrant/.ssh
sudo chmod 700 /home/vagrant/.ssh
