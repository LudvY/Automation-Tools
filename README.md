# Automation-Tools for Bug Hunters

Those are my automation tools for Web application pentesting , By BASH scripts & aliases 
I Hope you like 

 ` Tools Used : Amass , Subfinder , Assetfinder , Cero , Linkfinder , Secretfinder ` 

# Requirements :
Ubuntu System works prefect for those tools and all Linux Machines :


# Installation :

```
git clone https://github.com/LudvY/Automation-Tools.git ; cd Automation-Tools/ ; chmod +x tools.sh ; bash tools.sh
```
# Usages :
  # enum-subdomains.sh
`bash enum-subdomains.sh [root/target]`
     # example: 
`bash enum-subdomains.sh yahoo.com`

  # cidr.sh
 `bash cidr.sh [file contains CIDRs/Ipranges]`
     # example: 
`bash cidr.sh mycidrs.txt`
 
  # LinkFinder.sh / SecretFinder.sh
  `bash linkfinder.sh [file contains JAVASCRIPTs urls]`
         # example: 
`bash linkfinder.sh myjavascripts.txt`
 
`bash secretfinder.sh [file contains JAVASCRIPTs urls]`
       # example: 
`bash secretfinder.sh myjavascripts.txt`

  # Aliases for Bash Profile :
```
enum(){
 bash ~/tools/enum-subdomains.sh $1
}
```
  
```
cidr(){
 bash ~/tools/cidr.sh $1 | tee -a $2-cidrs.txt && cat $2-cidrs.txt | grep '*.' | anew $2-rootCIDrs.txt
}
```
Note Please : for this aliase of CIDR , usage become :

`cidr mycidrs.txt outputfile`

```
js(){
 getJS --url $1 --complete --verbose --output ~/recon/javascript/$2.txt && bash ~/tools/linkfinder.sh ~/recon/javascript/$2.txt && echo "------------>
}
```
