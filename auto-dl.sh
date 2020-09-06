#.config/auto-dl.sh

PACMAN='sudo pacman --noconfirm'
YAY='yay --noconfirm'

$PACMAN -Syyu
git clone https://aur.archlinux.org/yay.git ~/temp-conf/yay
cd ~/temp-conf/yay
makepkg -si

$PACMAN -S feh

$YAY -S i3-gaps

git clone https://github.com/RotDams/dotfile ~/temp-conf/dotfile
mv ~/temp-conf/dotfile/* ~/.config/
rm -rf ~/temp-conf

$PACMAN -S blueberry 

$PACMAN -S perl 

$PACMAN -S rofi

$PACMAN -S gvim 
ln -s ~/.config/misc-config/.vimrc ~/.vimrc

$PACMAN -S fish
curl -L https://get.oh-my.fish | fish
omf install robbyrussell
omf theme robbyrussell
set -U fish_greeting ""


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

$YAY -S polybar
$YAY -S ttf-font-awesome-4
$YAY -S ttf-joypixels
$PACMAN -S bluez-utils
sudo ~/.config/misc-config/noto-font.sh
ln -s ~/.config/misc-config/.Xresources ~/.Xresources   

$PACMAN -S --needed lightdm-webkit2-greeter lightdm-webkit-theme-litarvan
sudo sed -i 's/greeter-session=/greeter-session=lightdm-greeter-session\n# /g' /etc/lightdm/lightdm.conf
sudo sed -i 's/webkit_theme        =/webkit_theme        =litarvan\n# /g' /etc/lightdm/lightdm-webkit2-greeter.conf