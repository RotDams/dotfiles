#.config/auto-dl.sh
sudo pacman -Syyu
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~

sudo pacman -S feh

sudo yay -S i3-gaps

git clone https://github.com/RotDams/dotfile
mv -r dotfile/* .config/
rm -rf dotfile

sudo pacman -S blueberry 

sudo pacman -S perl 

sudo pacman -S rofi

sudo pacman -S gvim 
ln -s ~/.config/misc-config/.vimrc ~/.vimrc

sudo pacman -S zsh
chsh -s /usr/bin/zsh
ln -s ~/.config/misc-config/.zshrc ~/.zshrc

sudo pacman -S tree
sudo pacman -S code
sudo pacman -S conky-lua-nv
ln -s ~/.config/misc-config/.conkyrc ~/.conkyrc

sudo pacman -S picom
mkdir ~/.config/picom/
cp /etc/xdg/picom.conf ~/.config/picom/picom.conf
picom --config ~/.config/picom/picom.conf

sudo yay -S polybar
yay -S ttf-font-awesome-4
yay -S ttf-joypixels
pacman -S bluez-utils
sudo ~/.config/misc-config/noto-font.sh
ln -s .config/misc-config/.Xresources .Xresources   