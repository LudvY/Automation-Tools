#!/bin/bash

sudo apt update 
sudo apt upgrade 
sudo apt install python3
sudo apt install python3-pip

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
echo -e "\n [+] Insalling Linkfinder: "
git clone https://github.com/GerbenJavado/LinkFinder.git ; cd LinkFinder ; python setup.py install
echo -e "\n [+] Insalling SecretFinder: "
git clone https://github.com/m4ll0k/SecretFinder.git secretfinder ; cd secretfinder ; pip install -r requirements.txt
echo -e "\n --------------------------Done Installing required Tools for any error try to install them manually ------------------------------------"




