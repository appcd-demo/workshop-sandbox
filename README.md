# StackGen Sandbox 


## Installation script for Linux user 

```
#!/bin/bash
sudo apt-get install -y jq
sudo apt-get install -y zip unzip
#!/bin/bash
# Get the current version of Terraform
CURR_VER=$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r -M '.current_version')
# Download the Terraform zip file
curl -LO "https://releases.hashicorp.com/terraform/${CURR_VER}/terraform_${CURR_VER}_linux_amd64.zip"
# Unzip the downloaded file
unzip "terraform_${CURR_VER}_linux_amd64.zip"
# Move the Terraform binary to /usr/local/bin
sudo mv terraform /usr/local/bin/
# Make the binary executable
sudo chmod +x /usr/local/bin/terraform
# Clean up
rm "terraform_${CURR_VER}_linux_amd64.zip"
sudo apt-get install -y awscli
sudo apt-get install -y gnupg software-properties-common
sudo apt-get update -y
curl -sL https://git.io/_has | bash -s terraform aws git zip unzip python3
```


### Installation Scrip for Mac user 

> install via homebrew 

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor
```

install github 

```
brew install git
brew install --cask github
```

install terraform 
```
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

install python

```
brew install python
python3 --version
python3 --version
```
install AWS CLi 

```
brew install awscli
aws --version
```


### Installation for Windows User 

Install chocolatey windows 

open powershell and past this 

```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iwr https://community.chocolatey.org/install.ps1 -UseBasicParsing | iex
```

MSI installer 

https://github.com/chocolatey/choco/releases/download/2.3.0/chocolatey-2.3.0.0.msi

Intall python 

```
choco install python
python -m pip install -U pip
```
Install git 
```
choco install git
```

Install AWS CLI 

```
choco install awscli

```
Install zip 
```
choco install zip
```

install terraform 

```
choco install terraform --pre 
```
