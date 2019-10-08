#!/bin/bash
#DEVELOPMENT - VISUAL CODE

main()
{
    VSCODE_IS_AVAILABLE="$(code --version 2> /dev/null)"

    if [[ ${VSCODE_IS_AVAILABLE} == '' ]]; then
        echo "${bakgrn}[installed][VSCODE]${txtrst} already installed" ;        
    else
        echo "${bakcyn}[VSCODE] Start Install ${txtrst}";

        apt-get install software-properties-common apt-transport-https -y > /dev/null 2>&1
        curl -sS https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg > /dev/null 2>&1
        mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
        add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /dev/null 2>&1

        echo "${bakgrn}[VSCODE] Installing ${txtrst}";

        apt update > /dev/null 2>&1
        apt install code -y > /dev/null 2>&1

        echo  "${bakgrn}[VSCODE] Finish Install ${txtrst}";
    fi
}

main