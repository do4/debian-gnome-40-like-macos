cd ~

getFile () {
  wget https://raw.githubusercontent.com/do4/debian-gnome-40-like-macos/main/${1}
}

getFolder () {
  F=${1}.tar.xz
  getFile ${F}
  tar -xf ${F}
  [ -f ${F} ] && rm ${F}
}

getFolder WhiteSur-dark
getFolder BigSur-black
getFolder McMojave-cursors
getFolder mcOS-BS-Dark
getFile   backgrounds.zip

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
