#!/bin/sh
QEMUKVM_IS_AVAILABLE="$(dnf list installed | grep qemu-kvm)"

if [[ ${QEMUKVM_IS_AVAILABLE} != '' ]]; then

    echo -e "${bakgrn}[installed][Android emulator]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[Android emulator] Start Install ${txtrst}";

    dnf install -y qemu-kvm virt-manager virt-viewer android-tools
    dnf group install virtualization
    systemctl start libvirtd
    systemctl enable libvirtd
    groupadd androiddev
    usermod -aG androiddev rtancman
    udevadm control --reload
    systemctl restart systemd-udevd.service

   # yarn global add create-react-native-app
   # yarn global add expo-cli
   # yarn global add exp
	echo -e "${bakgrn}[Android emulator] Finish Install ${txtrst}";

fi

