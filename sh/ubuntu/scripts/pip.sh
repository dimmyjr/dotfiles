#!/bin/sh
#TOOLS - PIP
source ./sh/util.sh

doInstall DIALOG "pip3 --version 2>&1 >/dev/null" "apt-get install python3-pip -y"