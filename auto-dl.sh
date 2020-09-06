#.config/auto-dl.sh

PACMAN="sudo pacman --noconfirm"
YAY="yay -S --noconfirm"

sudo pacman -Syyu --noconfirm
git clone https://aur.archlinux.org/yay.git ~/temp-conf/yay
cd ~/temp-conf/yay
makepkg -si --noconfirm

$PACMAN -S feh

$YAY i3-gaps

git clone https://github.com/RotDams/dotfile ~/temp-conf/dotfile
mv ~/temp-conf/dotfile/* ~/.config/
rm -rf ~/temp-conf

$PACMAN -S blueberry 

$PACMAN -S perl 

$PACMAN -S rofi

$PACMAN -S gvim 
ln -s ~/.config/misc-config/.vimrc ~/.vimrc

$PACMAN -S zsh
ln -s ~/.config/misc-config/.zshrc ~/.zshrc

$PACMAN -S tree
$PACMAN -S code
$PACMAN -S conky-lua-nv
ln -s ~/.config/misc-config/.conkyrc ~/.conkyrc

$PACMAN -S picom
mkdir ~/.config/picom/
cp /etc/xdg/picom.conf ~/.config/picom/picom.conf
picom --config ~/.config/picom/picom.conf

$YAY polybar
$YAY ttf-font-awesome-4
$YAY ttf-joypixels
$PACMAN -S bluez-utils
sudo ~/.config/misc-config/noto-font.sh --noconfirm
ln -s ~/.config/misc-config/.Xresources ~/.Xresources   

$PACMAN -S --needed lightdm-webkit2-greeter lightdm-webkit-theme-litarvan
sudo sed -i 's/greeter-session=/greeter-session=lightdm-webkit2-greeter\n# /g' /etc/lightdm/lightdm.conf
sudo sed -i 's/webkit_theme        =/webkit_theme        = litarvan\n# /g' /etc/lightdm/lightdm-webkit2-greeter.conf

chsh -s /usr/bin/zsh