#!/bin/sh
#DEVELOPMENT - GOLANG

GOLANG_IS_AVAILABLE="$(go version 2>&1 >/dev/null)"

if [[ ${GOLANG_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][GOLANG]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[GOLANG] Start Install ${txtrst}";

    add-apt-repository ppa:longsleep/golang-backports -y
    apt-get update -y
    apt-get install golang-go -y

	echo -e "${bakgrn}[GOLANG] Finish Install ${txtrst}";

fi