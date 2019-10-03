#!/bin/sh
#BASIC TOOLS - DIALOG
source ./sh/util.sh

doInstall DIALOG "dialog --version 2>&1 >/dev/null" "apt-get install dialog -y"

