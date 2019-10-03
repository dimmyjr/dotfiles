#!/bin/sh
#DEVELOPMENT - AWS CLI
source ./sh/util.sh

doInstall DIALOG "aws --version 2>&1 >/dev/null" "pip3 install awscli --upgrade --user && echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.zshrc"