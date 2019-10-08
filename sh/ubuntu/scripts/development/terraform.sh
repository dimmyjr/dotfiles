#!/bin/sh
#DEVELOPMENT - TERRAFORM

VERSION_LASTED=$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r -M '.current_version')
wget "https://releases.hashicorp.com/terraform/${VERSION_LASTED}/terraform_${VERSION_LASTED}_linux_amd64.zip"
unzip "terraform_${VERSION_LASTED}_linux_amd64.zip"
mv terraform /usr/local/bin/
terraform --version 
