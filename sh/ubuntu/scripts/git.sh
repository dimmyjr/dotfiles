#!/bin/sh
#BASIC DEVELOPMENT - GIT

source ./sh/util.sh

add-apt-repository -y ppa:git-core/ppa
doInstall GIT "git --version 2>&1 >/dev/null" "apt-get install git-core git git-gui gitk -y"