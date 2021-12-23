cd ~

getFile () {
  U=https://raw.githubusercontent.com/do4/debian-gnome-40-like-macos/main/${1}
  echo "- - - - -"
  echo ""
  echo "GET: ${U}"
  wget ${U}
}

getFolder () {
  F=${1}.tar.xz
  getFile ${F}
  tar -xf ${F}
  [ -f ${F} ] && rm ${F}
}

if [ -d /usr/share/themes/ ]; then
  getFolder WhiteSur-dark
  getFolder BigSur-black
  getFolder mcOS-BS-Dark

  sudo mv WhiteSur-dark /usr/share/themes/
  sudo mv BigSur-black /usr/share/themes/
  sudo mv mcOS-BS-Dark /usr/share/themes/
  [ -d BigSur-black-dark ] && sudo mv BigSur-black-dark /usr/share/themes/
fi

if [ -d /usr/share/icons/ ]; then
  getFolder McMojave-cursors
  sudo mv McMojave-cursors /usr/share/icons/
fi

if [ -d /usr/share/backgrounds/gnome/ ]; then
  getFile backgrounds.zip
  unzip   backgrounds.zip
  sudo mv backgrounds/* /usr/share/backgrounds/gnome/
fi

sudo apt install gnome-tweak-tool
sudo apt install cairo-dock
