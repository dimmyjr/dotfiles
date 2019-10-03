#!/bin/sh


echo -e "${bakblu}[Ubuntu][Install][Start]${txtrst}\n";

echo -e "${bakblu}[Ubuntu]${txtrst} run update";

#apt-get update -y;

echo -e "${bakblu}[Ubuntu]${txtrst} finish update\n";

echo -e "${bakblu}[Ubuntu]${txtrst} install basic";

. sh/ubuntu/basic.sh 

echo -e "${bakblu}[Ubuntu]${txtrst} finish basic\n";

declare -a APPS=("./sh/ubuntu/scripts/git.sh " 
                "./sh/ubuntu/scripts/docker.sh "
)

OPTIONS=()
COUNTER=1
for i in "${APPS[@]}"
do
   OPTIONS="$OPTIONS $COUNTER $(head -n 2 $i | tail -1) off"
   let COUNTER=COUNTER+1
done

HEIGHT=10
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Backtitle here"
TITLE="Title here"
MENU="Choose one of the following options:"

CHOICE=$(dialog --stdout --checklist teste 10 10 10 $OPTIONS)
echo $CHOICE
echo -e "\n${bakblu}[Ubuntu][Install][Finish]${txtrst}";
