cd ~
#mkdir .icon
#mkdir .theme

getFolder () {
  wget https://raw.githubusercontent.com/do4/debian-gnome-40-like-macos/main/main/${1}.tar.xz
  tar -xf ${1}.tar.xz
  [ -f ${1}.tar.xz ] && rm ${1}.tar.xz
}

getFolder WhiteSur-dark
sudo mv WhiteSur-dark /usr/share/themes/

getFolder BigSur-black
sudo mv BigSur-black /usr/share/themes/

getFolder McMojave-cursors
sudo mv McMojave-cursors /usr/share/icons/

getFolder mcOS-BS-Dark
sudo mv mcOS-BS-Dark /usr/share/themes/

[ -d BigSur-black-dark ] && sudo mv BigSur-black-dark /usr/share/themes/

sudo apt install gnome-tweak-tool
sudo apt install cairo-dock
