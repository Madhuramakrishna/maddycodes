#!/bin/bash

set -x

echo "Install Java"
yum install java-1.8.0-openjdk-devel -y;
echo "\n---------------------------"
echo "JAVA version installed is\n";
java -version;
echo "\n---------------------------"
echo "Copy the repo file\n"
cp jenkins.repo /etc/yum.repos.d/;
echo "\n---------------------------"
sleep 5;

rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key;

echo "Install Jenkins";
echo "\n---------------------------"
sudo yum install jenkins -y;

systemctl start jenkins;

systemctl status jenkins;

firewall-cmd --add-port=8080/tcp --permanent;

firewall-cmd --reload;

cat /var/lib/jenkins/secrets/initialAdminPassword

