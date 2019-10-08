#!/bin/bash
#DEVELOPMENT - SDK MAN

main() {
    SDKMAN_IS_AVAILABLE="$(sdk --version 2> /dev/null)"

    if [[ ${SDKMAN_IS_AVAILABLE} == '' ]]; then
        echo "${bakgrn}[installed][SDKMAN]${txtrst} already installed" ;        
    else
        echo "${bakcyn}[SDKMAN] Start Install ${txtrst}";

        curl -s "https://get.sdkman.io" | bash

        export SDKMAN_DIR="/home/${username}/.sdkman"
        chmod -R 777 /home/dosouza/.sdkman
        source "/home/${username}/.sdkman/bin/sdkman-init.sh"

        echo  "${bakgrn}[SDKMAN] Finish Install ${txtrst}";
    fi
}

main