#!/bin/sh
#ZSH
source ./sh/util.sh

doInstall ZSH "zsh --version 2>&1 >/dev/null" "apt-get install zsh -y"