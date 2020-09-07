
#.config/auto-dl.sh
 
username="$(logname)"
PACMAN="pacman --noconfirm"
YAY="sudo -u $username yay -S --noconfirm"
 
$PACMAN -S feh
 
$YAY i3-gaps
 
mv /home/$username/temp-conf/dotfile/* /home/$username/.config/
rm -rf /home/$username/temp-conf
 
$PACMAN -S blueberry 
 
$PACMAN -S perl 
 
$PACMAN -S rofi
 
$PACMAN -S gvim 
ln -s /home/$username/.config/misc-config/.vimrc /home/$username/.vimrc
 
$PACMAN -S zsh
ln -s /home/$username/.config/misc-config/.zshrc /home/$username/.zshrc
 
$PACMAN -S tree
$PACMAN -S code
$PACMAN -S conky-lua-nv
ln -s /home/$username/.config/misc-config/.conkyrc /home/$username/.conkyrc
 
$PACMAN -S picom
mkdir /home/$username/.config/picom/
cp /etc/xdg/picom.conf /home/$username/.config/picom/picom.conf
picom --config /home/$username/.config/picom/picom.conf
 
$YAY polybar
$YAY ttf-font-awesome-4
$YAY ttf-joypixels
$PACMAN -S bluez-utils
sudo /home/$username/.config/misc-config/noto-font.sh --noconfirm
ln -s /home/$username/.config/misc-config/.Xresources /home/$username/.Xresources   
 
$PACMAN -S --needed lightdm-webkit2-greeter lightdm-webkit-theme-litarvan
sudo sed -i 's/greeter-session=/greeter-session=lightdm-webkit2-greeter\n# /g' /etc/lightdm/lightdm.conf
sudo sed -i 's/webkit_theme        =/webkit_theme        = litarvan\n# /g' /etc/lightdm/lightdm-webkit2-greeter.conf
 
chsh -s /usr/bin/zsh