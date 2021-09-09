#!/bin/bash

#set -x

sudo amazon-linux-extras install epel -y

sudo yum update -y

echo "Install Java"

sudo yum install java -y;
echo "\n---------------------------"
echo "JAVA version installed is\n";
java -version;
echo "\n---------------------------"
echo "Copy the repo file\n"
sudo cp jenkins.repo /etc/yum.repos.d/;
echo "\n---------------------------"
sleep 5;

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key;

echo "Install Jenkins";
echo "\n---------------------------"
sudo yum install jenkins -y;

sudo systemctl start jenkins;

sudo systemctl status jenkins;

#firewall-cmd --add-port=8080/tcp --permanent;

#firewall-cmd --reload;

sleep 10;

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

