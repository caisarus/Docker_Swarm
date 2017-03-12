#!/bin/bash

echo "Updating with yum"
yum update -y

echo "Installing docker and docker-compose"
yum install docker -y
yum install epel-release -y
yum install python-pip -y
pip install --upgrade pip
pip install docker-compose
sudo groupadd docker
gpasswd -a ${USER} docker
service docker restart

echo "Adding hostnames for the managers and nodes"
echo "172.168.1.21	manager1" >> /etc/hosts
echo "172.168.1.22	manager2" >> /etc/hosts
echo "172.168.1.23	manager3" >> /etc/hosts
echo "172.168.1.31	node1" >> /etc/hosts
echo "172.168.1.32	node2" >> /etc/hosts
echo "172.168.1.33	node3" >> /etc/hosts