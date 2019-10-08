#!/bin/bash
#TOOLS - OH MY ZSH - POWERLEVEL9K

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/ryanoasis/nerd-fonts.git ~/.oh-my-zsh/custom/fonts/nerd-fonts
./install.sh hank

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_CUSTOM_SDK_JAVA="echo ☕  \$(sdk current java | sed -n -e 's/Using java version //p')"
POWERLEVEL9K_CUSTOM_SDK_JAVA_BACKGROUND="blue"
POWERLEVEL9K_CUSTOM_SDK_JAVA_FOREGROUND="white"
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator custom_sdk_java background_jobs history time)
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'