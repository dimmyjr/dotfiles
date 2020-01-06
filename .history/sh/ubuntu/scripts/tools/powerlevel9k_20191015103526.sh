#!/bin/bash
#TOOLS - OH MY ZSH - POWERLEVEL9K

# if [ -d ~/.oh-my-zsh/custom/themes/powerlevel9k ]; then

#     echo -e "${bakgrn}[installed][POWERLEVEL9K]${txtrst} already installed ;)" ;    

# else
#     git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
    # mkdir -p "$HOME/.local/share/fonts"
    # . sh/ubuntu/scripts/hack-linux-installer.sh v3.003

     sed -i  '/ZSH_THEME=.*/d' "$HOME/.zshrc"

    echo " " >> "$HOME/.zshrc" 
    echo " " >> "$HOME/.zshrc" 
    echo "### ### ### POWERLEVEL9K THEME " >> "$HOME/.zshrc" 
    echo "ZSH_THEME=\"powerlevel9k/powerlevel9k\"" >> "$HOME/.zshrc" 
    echo "POWERLEVEL9K_MODE='nerdfont-complete'" >> "$HOME/.zshrc" 
    echo "POWERLEVEL9K_PROMPT_ON_NEWLINE=true " >> "$HOME/.zshrc" 
    echo "POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=\"▶ \" " >> "$HOME/.zshrc" 
    echo "POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=\"\" " >> "$HOME/.zshrc" 
    echo "POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs) " >> "$HOME/.zshrc" 
    echo "POWERLEVEL9K_CUSTOM_SDK_JAVA=\"echo ☕  \$(sdk current java | sed -n -e 's/Using java version //p')\" " >> "$HOME/.zshrc" 
    echo "POWERLEVEL9K_CUSTOM_SDK_JAVA_BACKGROUND=\"blue\" " >> "$HOME/.zshrc" 
    echo "POWERLEVEL9K_CUSTOM_SDK_JAVA_FOREGROUND=\"white\" " >> "$HOME/.zshrc" 
    echo "POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator custom_sdk_java background_jobs history time) " >> "$HOME/.zshrc" 
    echo "POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white' " >> "$HOME/.zshrc" 
    echo "POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white' " >> "$HOME/.zshrc" 

    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 
# fi