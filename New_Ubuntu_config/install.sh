#bin/bash

# Message d'acceuil

cat print.txt
printf "\n\n\n\n"

# Preparation a l'instalation des modules...

printf "Preparation a l'instalation des modules  ...\n\n\n\n"

printf "installation de curl ..."
sudo apt-get install curl
printf "\n\n\n\n installation de dpkg ..."
sudo apt-get install dpkg
printf "\n\n\n\n installation de wget ..."
sudo apt-get install wget
printf "\n\n\n\n installation de zsh ..."
sudo apt-get install zsh
printf "\n\n\n\n installation de git ..."
sudo apt-get install git
printf "\n\n\n\n installation de gcc ..."
sudo apt-get install gcc
printf "\n\n\n\n installation de clang ..."
sudo apt-get install clang
printf "\n\n\n\n installation de valgrind ..."
sudo apt-get install valgrind
printf "\n\n\n\n installation de snap ..."
sudo apt-get install snap
printf "\n\n\n\n ajout du repo pour grub-customizer ..."
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
printf "\n\n\n\n installation de grub-customizer ..."
sudo apt-get install grub-customizer
printf "\n\n\n\n telechargement des themes de boot ..."
git clone https://github.com/ChrisTitusTech/Top-5-Bootloader-Themes.git $HOME
printf "\n\n\n\n Changement de la permission de l'install ..."
chmod 777 $HOME/Top-5-Bootloader-Themes/install.sh
printf "\n\n\n\n installation du theme de boot ..."
sudo $HOME/Top-5-Bootloader-Themes/install.sh
printf "\n\n\n\n Ouverture de grub-customizer ..."
sudo grub-customizer
printf "\n\n\n\n Installation de OH-My-Zsh ..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Preparation a l'instalation des Applications

printf "\n\n\n\n\n\n Preparation de l'installation des Applications ...\n\n\n\n"

#Install de Chrome

printf "Installation de chrome ..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f

google-chrome 'https://chrome.google.com/webstore/detail/adblock-for-youtube/cmedhionkhpnakcndndgjdbohmhepckk?hl=en-US'
google-chrome 'https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep?hl=en-US'
google-chrome 'https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=en-US'
google-chrome 'https://chrome.google.com/webstore/detail/super-dark-mode/nlgphodeccebbcnkgmokeegopgpnjfkc?hl=en-US'

printf "\n\n\n\nInstallation de Vscode ..."

#Install de Vscode
sudo apt update
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

printf "\n\n\n\n Installation des extensions de vscode ..."
code --install-extension kube.42header
code --install-extension ms-vscode.cpptools
code --install-extension adpyke.codesnap
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension sdras.night-owl
code

#Instal de Discord
printf "\n\n\n\n Installation de Discord ..."

sudo snap install discord
discord &

# Preparation des changements de themes

printf "\n\n\n\n\n Preparation des changements de themes ...\n\n\n\n\n ..."

printf "Installation de gnome-software ..."
sudo apt install gnome-software
printf "\n\n\n\n Installation de gnome-tweaks ..."
sudo apt install gnome-tweaks
printf "\n\n\n\n suppressions des dossier .icons et .themes si ils existent ..."
rm -rf $HOME/.icons
rm -rf $HOME/.themes
printf "\n\n\n\n Remplacement des dossier par ceux qui contiennent les themes ..."
mv .icons $HOME
mv .themes $HOME
printf "\n\n\n\n Installation de l'extension gnome-shell ..."
sudo apt install gnome-shell-extensions
google-chrome 'https://extensions.gnome.org/extension/1362/custom-hot-corners/'
google-chrome 'https://extensions.gnome.org/extension/881/screenshot-window-sizer/'
google-chrome 'https://extensions.gnome.org/extension/19/user-themes/'
google-chrome 'https://extensions.gnome.org/extension/3740/compiz-alike-magic-lamp-effect/'
gnome-tweaks
printf "\n\n\n\n Ajout du repository pour plank ..."
sudo apt-add-repository ppa:ricotz/docky
printf "\n\n\n\n Installation de plank ..."
sudo apt-get install plank
printf "Ouverture de plank ..."
plank --preferences