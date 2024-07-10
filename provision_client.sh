#!/bin/bash
# Установка OpenSSH Client
sudo apt-get update
sudo apt-get install -y openssh-client
# Копирование публичного ключа на сервер
ssh-keygen -t rsa -N "" -f /home/vagrant/.ssh/id_rsa
sshpass -p "vagrant" ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub vagrant@192.168.56.11
