

sudo pacman -Sy git libxft libxinerama neofetch ttf-jetbrains-mono ttf-font-awesome xwallpaper xorg-xrandr wget xcompmgr python-pywal

setsid xcompmgr

xrandr --output Virtual1 --mode 1920x1080

mkdir ~/.local/scr ~/wallpaper
cd ~/wallpaper 
wget https://w.wallhaven.cc/full/gj/wallhaven-gjr8xq.jpg
xwallpaper --zoom ~/wallpaper/wallhaven-gjr8xq.jpg
wal -i ~/wallpaper/wallhaven-gjr8xq.jpg

cd ~/.local/scr

git clone http://github.com/bugswriter/dwm.git
git clone http://github.com/bugswriter/dmenu.git
git clone http://github.com/bugswriter/st.git
git clone https://github.com/FilipLitwora/pywal-discord.git
git clone https://aur.archlinux.org/yay.git

cd dwm 
sudo make clean install

cd ..
cd dmenu 
sudo make clean install

cd .. 
cd st
sudo make clean install

cd .. 
cd yay
makepkg -si

cd .. 
cd pywal-discord
./install

bash <(curl https://updates.zen-browser.app/appimage.sh)
