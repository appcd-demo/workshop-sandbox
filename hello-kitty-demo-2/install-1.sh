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
sudo apt-get install -y jq
sudo apt-get install -y zip unzip
sudo apt-get install -y awscli
sudo apt-get install -y gnupg software-properties-common
sudo apt-get update -y
curl -sL https://git.io/_has | bash -s terraform aws git zip unzip python3
