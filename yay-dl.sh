 
#/.config/install-yay
 
 
username="$(logname)"
git clone https://aur.archlinux.org/yay.git /home/$username/temp-conf/yay
cd /home/$username/temp-conf/yay && makepkg -si --noconfirm
 