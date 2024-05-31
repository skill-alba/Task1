#!bin/bash
#Backports rep installation
apt-add-repository deb http://archive.ubuntu.com/ubuntu jammy-backports main
#Apt update
apt-get update && apt-get upgrade
#Apache installation and starting
apt install apache2
systemctl enable apache2
#Python installation 
apt-get install python3.10
#SSh-server installation and starting
apt-get install ssh
apt install openssh-server
systemctl enable sshd
#Checking
python3 --version
systemctl status apache2
systemctl status ssh
echo Backports is installed
echo Apache is installed
echo Python is installed
echo SSH-server is installed and started
mkdir /home/skill/SkillFactory_HW
ufw allow ssh comment 'Open port ssh tcp port22'
ufw allow 80 comment 'Open 80 port HTTP'
ufw allow 443 comment 'Open 443 port for HTTPS'
date "+%d-%m-%Y %H-%M-%S"
