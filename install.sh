cd ~
mkdir .icon
mkdir .theme

cd Download
wget https://github.com/do4/debian-gnome-40-like-macos/blob/main/WhiteSur-dark.tar.xz?raw=true -o WhiteSur-dark.tar.xz
wget https://github.com/do4/debian-gnome-40-like-macos/blob/main/BigSur-black.tar.xz?raw=true -o BigSur-black.tar.xz
wget https://github.com/do4/debian-gnome-40-like-macos/blob/main/McMojave-cursors.tar.xz?raw=true -o McMojave-cursors.tar.xz
wget https://github.com/do4/debian-gnome-40-like-macos/blob/main/mcOS-BS-Dark.tar.gz?raw=true -o mcOS-BS-Dark.tar.gz
tar -xf WhiteSur-dark.tar.xz
tar -xf BigSur-black.tar.xz
tar -xf McMojave-cursors.tar.xz
tar -xf mcOS-BS-Dark.tar.gz

sudo apt install gnome-tweak-tool
sudo apt install cairo-dock
