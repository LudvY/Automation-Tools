#!/bin/bash

sudo apt update 
sudo apt upgrade 

echo -e "\n [+] Insalling Golang : "
sudo apt install golang -y
echo -e "\n [+] Insalling Cero : "
sudo go install github.com/glebarez/cero@latest
echo -e "\n [+] Insalling assetfinder : "
sudo go get install github.com/tomnomnom/assetfinder@latest
echo -e "\n [+] Insalling Subfinder : "
sudo go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
echo -e "\n [+] Insalling Amass for Ubuntu w snapstore: "
sudo apt install snapd && sudo sudo snap install amass
echo -e "\n [+] Insalling anew: "
sudo go install -v github.com/tomnomnom/anew@latest
echo -e "\n --------------------------Done INstalling for any error try to install them manually ------------------------------------"




