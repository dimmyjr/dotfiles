#!/bin/sh
#BASIC DEVELOPMENT - GIT

source ./sh/util.sh

doInstall GIT "git --version" "add-apt-repository -y ppa:git-core/ppa && apt-get install git-core git git-gui gitk -y"
