

sudo pacman -Sy git libxft libxinerama neofetch ttf-jetbrains-mono ttf-font-awesome xwallpaper xorg-xrandr wget xcompmgr python-pywal

setsid xcompmgr

xrandr --output Virtual1 --mode 1360x768

mkdir ~/.local/scr ~/wallpaper
cd ~/wallpaper 
wget https://w.wallhaven.cc/full/9m/wallhaven-9m6l1w.png
xwallpaper --zoom ~/wallpaper/wallhaven-9m6l1w.png
wal -i ~/wallpaper/wallhaven-9m6l1w.png

cd ~/.local/scr

git clone http://github.com/bugswriter/dwm.git
git clone http://github.com/bugswriter/dmenu.git
git clone http://github.com/bugswriter/st.git
git clone https://github.com/FilipLitwora/pywal-discord.git
git clone http://aur.archlinux.org/paru.git

cd dwm 
sudo make clean install

cd ..
cd dmenu 
sudo make clean install

cd .. 
cd st
sudo make clean install

cd .. 
cd paru
makepkg -si

cd .. 
cd pywal-discord
./install
