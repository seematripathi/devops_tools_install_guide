#!/bin/bash

#Install python3

sudo apt update &&
	sudo apt install -y python3

#install aws cli

sudo apt  install awscli

#Install git 

sudo apt install git

#install Java 

sudo apt install -y openjdk-11-jdk

#Install maven 

sudo apt install -y maven

#Install Jenkins

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key && 
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null &&
sudo apt-get update &&
sudo apt-get install -y jenkins

#Install docker 

sudo apt update &&
	sudo apt install -y docker.io

#Install kubectl

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

chmod +x kubectl

mkdir -p ~/.local/bin

mv ./kubectl ~/.local/bin/kubectl


