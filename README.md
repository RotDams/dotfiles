# Personal DotFile

## About


## Getting started

1. **Installing manjaro through its [website](https://manjaro.org/download/).** (XFCE).


2. **Update all Manjaro package.** Remember to restart the PC afterwards.
```bash
sudo pacman -Syyu
```
3. **Install Yay to get access to AUR.**
```bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

4. **Install `feh` to use background images.**
```bash
sudo pacman -S feh
```

5. **Install I3 manager.** I personally choose a fork of this version, `i3-gaps`. You will need to run I3 a first time to create the configuration file. You can find my file configuration in the config folder.
```bash
sudo yay -S i3-gaps
```
6. **get my configs** 
```bash
cd ~
git clone https://github.com/RotDams/dotfile
mv -r dotfile/* .config/
rm -rf dotfile
```

7. **Install `blueberry` .** 
```bash
sudo pacman -S blueberry 
```

8. **Install `perl` .** 
```bash
sudo pacman -S perl 
```

9. **Install `rofi`, a run command interface.** My configuration file can be found in the config folder.
```bash
sudo pacman -S rofi
```

10. **Install `gvim` .** 
```bash
sudo pacman -S gvim 
ln -s ~/.config/misc-config/.vimrc ~/.vimrc
vim
:PlugInstall
```
11. **Install `zsh` .** 
```bash
sudo pacman -S zsh
chsh -s /usr/bin/zsh
ln -s ~/.config/misc-config/.zshrc ~/.zshrc

```
12. **Install utilities .** 
```bash
sudo pacman -S tree
sudo pacman -S code
sudo pacman -S conky-lua-nv
ln -s ~/.config/misc-config/.conkyrc ~/.conkyrc
```
13. **Add a composite manager, as [Picom](https://wiki.archlinux.org/index.php/Picom).**
```bash
sudo pacman -S picom
mkdir ~/.config/picom/
cp /etc/xdg/picom.conf ~/.config/picom/picom.conf
picom --config ~/.config/picom/picom.conf
```


14. **Install [Polybar](https://github.com/polybar/polybar/wiki).** 
```bash
sudo yay -S polybar
yay -S ttf-font-awesome-4
yay -S ttf-joypixels
pacman -S bluez-utils
sudo ~/.config/misc-config/noto-font.sh
ln -s .config/misc-config/.Xresources .Xresources             
```


## Install some applications

#. **Install a login manager screen, as [LightDM WebKit2](https://github.com/Litarvan/lightdm-webkit-theme-litarvan).**
