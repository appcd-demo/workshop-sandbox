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
gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint

# Add the HashiCorp repository
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

# Update package list and install Terraform & Python3
sudo apt-get update -y
sudo apt-get install -y terraform python3

# Print success message
echo "AWS CLI and Terraform and Python3 have been successfully installed."
