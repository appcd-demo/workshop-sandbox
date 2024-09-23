# StackGen Sandbox 


## Installation script for Linux user 

```
#!/bin/bash
sudo echo ; zcat <( CURRR_VER=$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r -M '.current_version') ; curl -q "https://releases.hashicorp.com/terraform/${CURRR_VER#?}/terraform_${CURRR_VER#?}_linux_amd64.zip" ) | sudo tee /usr/local/bin/terraform > /dev/null ; sudo chmod +x /usr/local/bin/terraform
sudo apt-get install -y awscli
sudo apt-get install -y gnupg software-properties-common
sudo apt-get install -y zip unzip
sudo apt-get update -y
sudo apt-get install -y jq
curl -sL https://git.io/_has | bash -s terraform aws git zip unzip python3
```