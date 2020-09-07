#.config/auto-dl.sh

PACMAN="sudo pacman --noconfirm"
YAY="yay -S --noconfirm"

sudo pacman -Syyu --noconfirm
git clone https://aur.archlinux.org/yay.git /home/logname/temp-conf/yay
cd /home/logname/temp-conf/yay
sudo -u makepkg -si --noconfirm

$PACMAN -S feh

$YAY i3-gaps

git clone https://github.com/RotDams/dotfile /home/logname/temp-conf/dotfile
mv /home/logname/temp-conf/dotfile/* /home/logname/.config/
rm -rf /home/logname/temp-conf

$PACMAN -S blueberry 

$PACMAN -S perl 

$PACMAN -S rofi

$PACMAN -S gvim 
ln -s /home/logname/.config/misc-config/.vimrc /home/logname/.vimrc

$PACMAN -S zsh
ln -s /home/logname/.config/misc-config/.zshrc /home/logname/.zshrc

$PACMAN -S tree
$PACMAN -S code
$PACMAN -S conky-lua-nv
ln -s /home/logname/.config/misc-config/.conkyrc /home/logname/.conkyrc

$PACMAN -S picom
mkdir /home/logname/.config/picom/
cp /etc/xdg/picom.conf /home/logname/.config/picom/picom.conf
picom --config /home/logname/.config/picom/picom.conf

$YAY polybar
$YAY ttf-font-awesome-4
$YAY ttf-joypixels
$PACMAN -S bluez-utils
sudo /home/logname/.config/misc-config/noto-font.sh --noconfirm
ln -s /home/logname/.config/misc-config/.Xresources /home/logname/.Xresources   

$PACMAN -S --needed lightdm-webkit2-greeter lightdm-webkit-theme-litarvan
sudo sed -i 's/greeter-session=/greeter-session=lightdm-webkit2-greeter\n# /g' /etc/lightdm/lightdm.conf
sudo sed -i 's/webkit_theme        =/webkit_theme        = litarvan\n# /g' /etc/lightdm/lightdm-webkit2-greeter.conf

chsh -s /usr/bin/zsh