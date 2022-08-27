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
 
  # LinkFinder.sh/SecretFinder.sh
  `bash linkfinder.sh [file contains JAVASCRIPTs urls]`
         # example: 
`bash linkfinder.sh myjavascripts.txt`
 
`bash secretfinder.sh [file contains JAVASCRIPTs urls]`
       # example: 
`bash secretfinder.sh myjavascripts.txt`

