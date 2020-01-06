#!/bin/bash


echo -e "${bakblu}[Ubuntu][Install][Start]${txtrst}\n";

echo -e "${bakblu}[Ubuntu]${txtrst} run update";

#apt-get update -y;

echo -e "${bakblu}[Ubuntu]${txtrst} finish update\n";

echo -e "${bakblu}[Ubuntu]${txtrst} install basic";

. sh/ubuntu/basic.sh 

echo -e "${bakblu}[Ubuntu]${txtrst} finish basic\n";

APPS=()
OPTIONS=()
COUNTER=1

for i in $(find ./sh/ubuntu/scripts/*/ -type f -name "*.sh")
do
   NAME=$(head -n 2 $i | tail -1 | sed -e "s/ /_/g")
   OPTIONS="$OPTIONS $COUNTER $NAME  off"
   APPS[$COUNTER]=$i
   let COUNTER=COUNTER+1
done

HEIGHT=10
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Backtitle here"
TITLE="Title here"
MENU="Choose one of the following options:"

CHOICE="$(dialog --stdout --checklist Select 50 100 50 $OPTIONS)"
clear
for i in $CHOICE
do
  "${APPS[i]}"
done

echo -e "\n${bakblu}[Ubuntu][Install][Finish]${txtrst}";