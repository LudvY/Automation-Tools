#!/bin/bash 

FILE=$1.all.txt
echo -e "\n [+] Checking for Existing FILE : $1"
if test -f "$FILE"; then

    read -p " [+] Your File already exists, Do You Want to HTTProbe them [Y/N] :" answer
    [ "$answer" = "Y" ] && cat $1.all.txt | httprobe -c 60 | anew $1.valid.txt
exit 0
else 
echo -e "\n [!] Your File doesn't exists, \n [+]Starting Enum on  : $1"
fi

echo -e " \n [+] Enum using Assetfinder : $1 " ;
 assetfinder -subs-only $1 | anew $1.asset.txt 

echo -e " \n [+] Enum using Subfinder : $1 " ;
 subfinder -d $1 -all -o $1.subfinder.txt

echo -e " \n [+] Enum using Amass : $1 " ;
 amass enum --passive -d $1 -o $1.amass.txt

 cat $1.asset.txt | anew $1.subfinder.txt && cat $1.subfinder.txt | anew $1.amass.txt && mv $1.amass.txt $1.all.txt && rm $1.asset.txt $1.subfinder.txt
echo -e "\n [+] Total Subdomains found for : $1"
 cat $1.all.txt | wc -l

read -p "Do You Want to HTTProbe them [Y/N] :" answer
if [ "$answer" = "Y" ] 
then 
echo -e "\n [+] HTTProbe The Urls : "
cat $1.all.txt | httprobe -c 60 | anew $1.valid.all.txt
else 
exit 0
fi

