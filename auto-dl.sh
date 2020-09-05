#.config/auto-dl.sh

PACMAN = 'pacman --noconfirm'
$PACMAN -Syyu
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~

$PACMAN -S feh

yay -S i3-gaps

git clone https://github.com/RotDams/dotfile ~/Download
mv -r ~/Download/dotfile/* ~/.config/

$PACMAN -S blueberry 

$PACMAN -S perl 

$PACMAN -S rofi

$PACMAN -S gvim 
ln -s ~/.config/misc-config/.vimrc ~/.vimrc

$PACMAN -S zsh
chsh -s /usr/bin/zsh
ln -s ~/.config/misc-config/.zshrc ~/.zshrc

$PACMAN -S tree
$PACMAN -S code
$PACMAN -S conky-lua-nv
ln -s ~/.config/misc-config/.conkyrc ~/.conkyrc

$PACMAN -S picom
mkdir ~/.config/picom/
cp /etc/xdg/picom.conf ~/.config/picom/picom.conf
picom --config ~/.config/picom/picom.conf

sudo yay -S polybar
yay -S ttf-font-awesome-4
yay -S ttf-joypixels
$PACMAN -S bluez-utils
sudo ~/.config/misc-config/noto-font.sh
ln -s .config/misc-config/.Xresources .Xresources   