#/.config/install.sh
 
 
username="$(logname)"
pw=$pwd
git clone https://aur.archlinux.org/yay.git /home/$username/temp-conf/yay
git clone https://github.com/RotDams/dotfile /home/$username/temp-conf/dotfile
cd /home/$username/temp-conf/yay && makepkg -si --noconfirm
 
cd /home/$username/temp-conf/dotfile
sudo -u root ./auto-dl.sh
 