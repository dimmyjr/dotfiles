

curl -s "https://get.sdkman.io" | bash

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/${username}/.sdkman"
[[ -s "/home/${username}/.sdkman/bin/sdkman-init.sh" ]] && source "/home/${username}/.sdkman/bin/sdkman-init.sh"




