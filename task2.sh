#!bin/bash
apt-get update && apt-get upgrade
tar cpf /home/skill/HW7/archive/"HW_backup.tar" /home
tar rf /home/skill/HW7/archive/"HW_backup.tar" /etc/vsftp.conf.orig
tar rf /home/skill/HW7/archive/"HW_backup.tar" /etc/ssh/sshd_config.orig
tar rf /home/skill/HW7/archive/"HW_backup.tar" /etc/xrdp
tar rf /home/skill/HW7/archive/"HW_backup.tar" /var/log

date "+%d-%m-%Y %H-%M-%S"
