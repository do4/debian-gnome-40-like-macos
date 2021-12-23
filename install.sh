cd ~

getFolder () {
  wget https://raw.githubusercontent.com/do4/debian-gnome-40-like-macos/main/${1}.tar.xz
  tar -xf ${1}.tar.xz
  [ -f ${1}.tar.xz ] && rm ${1}.tar.xz
}

getFolder WhiteSur-dark
getFolder BigSur-black
getFolder McMojave-cursors
getFolder mcOS-BS-Dark

if [ -d /usr/share/themes/ ]; then
  sudo mv WhiteSur-dark /usr/share/themes/
  sudo mv BigSur-black /usr/share/themes/
  sudo mv mcOS-BS-Dark /usr/share/themes/
  [ -d BigSur-black-dark ] && sudo mv BigSur-black-dark /usr/share/themes/
fi

if [ -d /usr/share/icons/ ]; then
  sudo mv McMojave-cursors /usr/share/icons/
fi

sudo apt install gnome-tweak-tool
sudo apt install cairo-dock
