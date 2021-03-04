#!/bin/bash

echo "Starting On New Machine"

echo -e "------------------------------------------------------------------------------------------------------------------------"

echo -e "Updating The machine"

sudo apt update

echo -e "Installing CA Certificates"

sudo apt install apt-transport-https ca-certificates curl software-properties-common

echo -e "Add the GPG key for the official Docker repository to your system..."

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo -e "Docker repository to APT sources"

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

echo -e "Updating The machine again"

sudo apt update

echo -e "Docker repo instead of the default Ubuntu repo"

sudo apt-cache policy docker-ce

echo -e ""

sudo apt install docker-ce

echo -e "Updating The machine"

status =$(sudo systemctl status docker)
echo "Docker Status $status"

