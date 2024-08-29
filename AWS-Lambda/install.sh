#!/bin/bash

# Update package list and install AWS CLI
sudo apt-get update -y
sudo apt-get install -y awscli

# Install required dependencies
sudo apt-get install -y gnupg software-properties-common

# Add the HashiCorp GPG key
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

# Verify the fingerprint of the key
sudo echo ; zcat <( CURRR_VER=$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r -M '.current_version') ; curl -q "https://releases.hashicorp.com/terraform/${CURRR_VER#?}/terraform_${CURRR_VER#?}_linux_amd64.zip" ) | sudo tee /usr/local/bin/terraform > /dev/null ; sudo chmod +x /usr/local/bin/terraform


# Update package list and install Terraform & Python3
sudo apt-get update -y
sudo apt-get install -y python3

# Print success message
echo "AWS CLI and Terraform and Python3 have been successfully installed."

curl -sL https://git.io/_has | bash -s terraform aws git zip unzip python3
