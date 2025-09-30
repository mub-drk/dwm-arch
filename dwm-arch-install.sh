

sudo pacman -Syyu git zsh libxft libxinerama fastetch ttf-jetbrains-mono ttf-font-awesome xwallpaper xorg-xrandr wget xcompmgr python-pywal

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



setsid xcompmgr
xrandr --output Virtual1 --mode 1920x1080

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
bash <(curl https://updates.zen-browser.app/appimage.sh)
