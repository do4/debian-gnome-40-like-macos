cd ~
mkdir .icon
mkdir .theme

getFolder () {
  wget https://github.com/do4/debian-gnome-40-like-macos/blob/main/${1}.tar.xz?raw=true
  mv "${1}.tar.xz?raw=true" ${1}.tar.xz
  tar -xf ${1}.tar.xz
}

getFolder WhiteSur-dark
getFolder BigSur-black
getFolder McMojave-cursors
getFolder mcOS-BS-Dark

sudo apt install gnome-tweak-tool
sudo apt install cairo-dock
