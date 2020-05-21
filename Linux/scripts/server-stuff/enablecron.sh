#!/bin/bash
#Autoupdate CentOS 7 with CRON

clear

echo 'Installing CRON..'
# Install CRON
sudo yum -y install yum-cron
sudo chkconfig yum-cron on

sudo service yum-cron start

#Final output
clear
echo 'CRON has been successfully installed and started'
echo 'You can edit CRON config in /etc/yum/yum-cron.conf'
echo 'Do not forget to restart CRON service after editing config' 
