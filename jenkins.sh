#!/bin/bash

#Author: Seema Tripathi

sudo apt update

sudo apt install -y openjdk-11-jdk

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update

sudo apt-get -y install jenkins

#Note- We need to open the port 8080 of the server, once the installation is complete we can access the jenkins using ipaddress:8080
