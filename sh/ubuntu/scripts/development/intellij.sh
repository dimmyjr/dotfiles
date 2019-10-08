#!/bin/bash
#DEVELOPMENT - INTELLIJ

AVAILABLE="$(intellij version 2>&1 >/dev/null)"

if [[ ${AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][INTELLIJ]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[INTELLIJ] Start Install ${txtrst}";
    snap install intellij-idea-community --classic
	echo -e "${bakgrn}[INTELLIJ] Finish Install ${txtrst}";
fi