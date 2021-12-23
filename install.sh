cd ~
#mkdir .icon
#mkdir .theme

getFolder () {
  wget https://raw.githubusercontent.com/do4/debian-gnome-40-like-macos/main/main/${1}.tar.xz
  tar -xf ${1}.tar.xz
  [ -f ${1}.tar.xz ] && rm ${1}.tar.xz
}

getFolder WhiteSur-dark
#mv WhiteSur-dark .theme/

getFolder BigSur-black
#mv BigSur-black .theme/

getFolder McMojave-cursors
#mv McMojave-cursors .icon/

getFolder mcOS-BS-Dark
#mv mcOS-BS-Dark .theme/

#[ -d BigSur-black-dark ] && mv BigSur-black-dark .theme/

sudo apt install gnome-tweak-tool
sudo apt install cairo-dock
