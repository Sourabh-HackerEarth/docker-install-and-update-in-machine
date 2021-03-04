#!/bin/bash

echo -e "\033[31;7Script Started on This Machine\e[0m";

echo -e "------------------------------------------------------------------------------------------------------------------------"

echo -e "\033[31;7mUpdating The Machine\e[0m";

sudo apt update

echo -e "\033[31;7mInstalling CA Certificates\e[0m";


sudo apt install apt-transport-https ca-certificates curl software-properties-common

echo -e "\033[31;7mAdd the GPG key for the official Docker repository to your system...\e[0m";

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo -e "\033[31;7mDocker repository to APT sources\e[0m";

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

echo -e "\033[31;7mUpdating The Machine AGAIN\e[0m";

sudo apt update

echo -e "\033[31;7mDocker repo instead of the default Ubuntu repo\e[0m";

sudo apt-cache policy docker-ce

echo -e "\033[31;7mInstalling Docker Finally\e[0m";

sudo apt install docker-ce

echo -e "\033[31;7mMachine Updated and Docker Installed\e[0m";

echo -e "\033[31;7mDocker Status is : \e[0m";

sudo systemctl status docker)


