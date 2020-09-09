 
#.config/config-install
username="$(logname)"
PACMAN="pacman --noconfirm"
YAY="sudo -u $username yay -S --noconfirm"

# Download YAY
sudo -u $username git clone https://github.com/RotDams/dotfiles /home/$username/temp-conf/dotfiles
sudo -u $username /home/$username/temp-conf/dotfiles/yay-dl.sh

# Pacman update
sudo pacman -Syyu --noconfirm

# Background manager
$PACMAN -S feh
 
 # i3
$YAY i3-gaps
mv /home/$username/temp-conf/dotfiles/* /home/$username/.config/
rm -rf /home/$username/temp-conf

# bluetooth manager 
$PACMAN -S blueberry 

# Perl
$PACMAN -S perl 

# App launcher
$PACMAN -S rofi
 
# Vim
$PACMAN -S gvim 
ln -s /home/$username/.config/misc-config/.vimrc /home/$username/.vimrc
 
# Shell
$PACMAN -S zsh
ln -s /home/$username/.config/misc-config/.zshrc /home/$username/.zshrc
usermod --shell /usr/bin/zsh $username
 
 # Apps
$PACMAN -S tree
$PACMAN -S code
$PACMAN -S conky-lua-nv
ln -s /home/$username/.config/misc-config/.conkyrc /home/$username/.conkyrc
 
# Picom
$PACMAN -S picom
mkdir /home/$username/.config/picom/
cp /etc/xdg/picom.conf /home/$username/.config/picom/picom.conf
picom --config /home/$username/.config/picom/picom.conf

# Polybar
$YAY polybar
$YAY ttf-font-awesome-4
$YAY ttf-joypixels
$PACMAN -S bluez-utils
sudo /home/$username/.config/misc-config/noto-font.sh --noconfirm
ln -s /home/$username/.config/misc-config/.Xresources /home/$username/.Xresources   
 
# Login manager
$PACMAN -S --needed lightdm-webkit2-greeter lightdm-webkit-theme-litarvan
sudo sed -i 's/greeter-session=/greeter-session=lightdm-webkit2-greeter\n# /g' /etc/lightdm/lightdm.conf
sudo sed -i 's/webkit_theme        =/webkit_theme        = litarvan\n# /g' /etc/lightdm/lightdm-webkit2-greeter.conf

# Chrome
$YAY google-chrome

# Discord
$YAY discord

# Screen manager
$pacman flameshot

# Redshfit for polybar
$PACMAN redshift
