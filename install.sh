#!/bin/bash
sudo apt-get update -yq

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -yq

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update -yq
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose make cmake -yq
sudo systemctl enable docker.service
