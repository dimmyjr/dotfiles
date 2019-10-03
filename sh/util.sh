function doInstall() {
    local name=${1}
    local available=${2}
    local cmdInstall=${3}

    AVAILABLE="$($avaiable)"

    if [[ ${AVAILABLE} == '' ]]; then

        echo -e "${bakgrn}[installed][${name}]${txtrst}" ;

    else

        echo -e "${bakcyn}[${name}] Start Install ${txtrst}";

        $($cmdInstall)

        echo -e "${bakgrn}[${name}] Finish Install ${txtrst}";

    fi

}
