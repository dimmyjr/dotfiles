#!/bin/sh
#BASIC TOOLS - JQ
source ./sh/util.sh

doInstall JQ "jq --version 2>&1 >/dev/null" "apt-get install jq -y"


