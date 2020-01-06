#!/bin/bash

clear

. sh/common/init.sh ;

echo -e "\n\n\n\n";
echo -e "  888             d8b  d8b                   888             ";
echo -e "  888             Y8P  Y8P                   888             ";
echo -e "  888                                        888             ";
echo -e "  888888  8888b.  888 8888 888  888 .d8888b  888888 888  888 ";
echo -e "  888         88b 888  888 888  888 88K      888    888  888 ";
echo -e "  888    .d888888 888  888 888  888  Y8888b. 888    888  888 ";
echo -e "  Y88b.  888  888 888  888 Y88b 888      X88 Y88b.  Y88b 888 ";
echo -e "    Y888  Y888888 888  888  Y88888  88888P   Y888   Y88888   ";
echo -e "                       888                                   ";
echo -e "                      d88P                                   ";
echo -e "                    888P                                     ";
echo -e "                                                             ${bakblu}dimmyjr${txtrst}";
echo -e "\n${BRed} Start...${txtrst}\n";

if [[ $DOTFILE_OS == "OSX" ]]; then

    . sh/osx/main.sh;

elif [[ $UID != 0 ]]; then

    echo -e "${bakred} [Error] You must run with root! ${txtrst}";

elif [[ "DOTFILESEMPTYUSER" == "$DOTFILE_DEFAULT_USER" || "YOUR_USER_HERE" == "$DOTFILE_DEFAULT_USER" ]]; then

    echo -e "${bakred} [Error] You must put your local USER! \n\n bash main.sh -u YOUR_USER_HERE ${txtrst}";

elif [ ! -e "/$DOTFILE_HOME/$DOTFILE_DEFAULT_USER" ]; then

    echo -e "${bakred} [Error] Your local USER do not exists! ${txtrst}";

else

    osrelease="$(cat /etc/*-release)"

    if [[ ${osrelease} =~ 'Fedora' ]]; then
        . sh/fedora/main.sh;
    elif [[ ${osrelease} =~ 'Debian' ]]; then
        . sh/debian/main.sh;
    elif [[ ${osrelease} =~ 'LinuxMint' || ${osrelease} =~ 'Ubuntu' ]]; then
        . sh/ubuntu/main.sh;
    else
        echo "OS notfound :( send me message or contribute with my project" ;
    fi

fi

echo -e "\n${BGreen} ...Finish${txtrst}";
echo -e "\n${bakblu} thx for coming and help me with our project in https://github.com/rtancman/dotfiles${txtrst}";

exit 1
