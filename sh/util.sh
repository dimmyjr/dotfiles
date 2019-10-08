#!/bin/bash

function doInstall() {
    local name=${1}
    local available=${2}
    local cmdInstall=${3}

    AVAILABLE="$($available 2>&1 >/dev/null)"

    if [[ ${AVAILABLE} == '' ]]; then

        echo -e "${bakcyn}${txtred}[installed][${name}]${txtrst} ${AVAILABLE}" ;

    else

        echo -e "${bakcyn}[${name}] Start Install ${txtrst}";

        echo $($cmdInstall)

        echo -e "${bakgrn}[${name}] Finish Install ${txtrst}";

    fi

}
