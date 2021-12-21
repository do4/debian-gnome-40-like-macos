cd ~
mkdir .icon
mkdir .theme

getFolder () {
  wget https://github.com/do4/debian-gnome-40-like-macos/blob/main/${1}.tar.xz?raw=true
  mv "${1}.tar.xz?raw=true" ${1}.tar.xz
  tar -xf ${1}.tar.xz
  [ -f ${1}.tar.xz ] && rm ${1}.tar.xz
}

getFolder WhiteSur-dark
mv WhiteSur-dark .theme/

getFolder BigSur-black
mv BigSur-black .theme/

getFolder McMojave-cursors
mv McMojave-cursors .icon/

getFolder mcOS-BS-Dark
mv mcOS-BS-Dark .theme/

sudo apt install gnome-tweak-tool
sudo apt install cairo-dock
