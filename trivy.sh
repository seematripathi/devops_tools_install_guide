#!/bin/bash

sudo apt update

sudo apt install -y wget apt-transport-https gnupg lsb-release

wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo gpg --dearmor -o /usr/share/keyrings/trivy-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/trivy-archive-keyring.gpg] https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/trivy.list > /dev/null

sudo apt update

sudo apt install -y trivy

