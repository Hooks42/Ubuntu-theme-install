#bin/bash

# Color

BLACK="\001\033[1;30m\002"
RED="\001\033[1;31m\002"
GREEN="\001\033[1;32m\002"
YELLOW="\001\033[1;33m\002"
BLUE="\001\033[1;34m\002"
PURPLE="\001\033[1;35m\002"
CYAN="\001\033[1;36m\002"
WHITE="\001\033[1;37m\002"
RESET="\001\033[0m\002"

# Message d'acceuil

chmod 777 print_hello
./print_hello

# Preparation a l'instalation des modules...
printf "$GREEN"
printf "\n\n\n===============================================================================================\n"
printf "\t\t\tPreparation a l'instalation des modules  ...\n"
printf "===============================================================================================\n\n\n"
printf "$RESET"
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tinstallation de curl ...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo apt-get install curl
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tinstallation de dpkg ...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo apt-get install dpkg
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tinstallation de wget ...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo apt-get install wget
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tinstallation de zsh ...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo apt-get install zsh
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tinstallation de git ...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo apt-get install git
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tinstallation de gcc ...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo apt-get install gcc
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tinstallation de clang ...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo apt-get install clang
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tinstallation de valgrind ...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo apt-get install valgrind
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tinstallation de snap ...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo apt-get install snap
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tajout du repo pour grub-customizer...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tinstallation de grub-customizer...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo apt-get install grub-customizer
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\ttelechargement des themes de boot ...\n"
printf "======================================\n\n\n"
printf "$RESET"
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tChangement de la permission de l'install ...\n"
printf "======================================\n\n\n"
printf "$RESET"
chmod 777 /Top-5-Bootloader-Themes/install.sh
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tinstallation du theme de boot ...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo Top-5-Bootloader-Themes/install.sh
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tOuverture de grub-customizer ...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo grub-customizer


# Preparation a l'instalation des Applications

printf "$GREEN"
printf "\n\n\n===============================================================================================\n"
printf "\t\t\tPreparation de l'installation des Applications ...\n"
printf "===============================================================================================\n\n\n"
printf "$RESET"

#Install de Chrome

printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tInstallation de chrome ...\n"
printf "======================================\n\n\n"
printf "$RESET"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tInstallation des extensions chrome ...\n"
printf "======================================\n\n\n"
printf "$RESET"
google-chrome 'https://chrome.google.com/webstore/detail/adblock-for-youtube/cmedhionkhpnakcndndgjdbohmhepckk?hl=en-US'
google-chrome 'https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep?hl=en-US'
google-chrome 'https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=en-US'
google-chrome 'https://chrome.google.com/webstore/detail/super-dark-mode/nlgphodeccebbcnkgmokeegopgpnjfkc?hl=en-US'

printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tInstallation de Vscode\n"
printf "======================================\n\n\n"
printf "$RESET"

#Install de Vscode
sudo apt update
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tInstallation des extensions de vscode ...\n"
printf "======================================\n\n\n"
printf "$RESET"
code --install-extension kube.42header
code --install-extension ms-vscode.cpptools
code --install-extension adpyke.codesnap
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension sdras.night-owl
code

#Instal de Discord

printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tInstallation de Discord ...\n"
printf "======================================\n\n\n"
printf "$RESET"

sudo snap install discord
discord &

# Preparation des changements de themes

printf "$GREEN"
printf "\n\n\n===============================================================================================\n"
printf "\t\t\tPreparation des changements de themes ...\n"
printf "===============================================================================================\n\n\n"
printf "$RESET"

printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tInstallation de gnome-software ...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo apt install gnome-software
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tInstallation de gnome-tweaks ...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo apt install gnome-tweaks
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tsuppressions des dossier .icons et .themes si ils existent ...\n"
printf "======================================\n\n\n"
printf "$RESET"
rm -rf $HOME/.icons
rm -rf $HOME/.themes
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tRemplacement des dossier par ceux qui contiennent les themes ...\n"
printf "======================================\n\n\n"
printf "$RESET"
mv .icons $HOME
mv .themes $HOME
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tInstallation des extensions gnome-shell ...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo apt install gnome-shell-extensions
google-chrome 'https://extensions.gnome.org/extension/1362/custom-hot-corners/'
google-chrome 'https://extensions.gnome.org/extension/881/screenshot-window-sizer/'
google-chrome 'https://extensions.gnome.org/extension/19/user-themes/'
google-chrome 'https://extensions.gnome.org/extension/3740/compiz-alike-magic-lamp-effect/'
gnome-tweaks
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tAjout du repository pour plank ...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo apt-add-repository ppa:ricotz/docky
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tInstallation de plank ...\n"
printf "======================================\n\n\n"
printf "$RESET"
sudo apt-get install plank
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tOuverture de plank ...\n"
printf "======================================\n\n\n"
printf "$RESET"
plank --preferences
printf "$GREEN"
printf "\n\n\n======================================\n"
printf "\tInstallation de Oh-My_zsh ...\n"
printf "======================================\n\n\n"
printf "$RESET"
printf "\n\n\n\n Installation de OH-My-Zsh ..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"