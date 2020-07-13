sudo pacman -Sy
aur="https://aur.archlinux.org/"
allpackageamd ()
{
	#chrome install
	sudo pacman -S chromium
	#VLC install
	sudo pacman -S vlc
	#VS code & nanoinstall
	git clone $aur/visual-studio-code-bin.git
  	cd visual-studio-code-bin
  	makepkg -si
	sudo pacman -S nano
	sudo pacman -S vi
	echo "Also installed nano and vi."
	zenity --info --text="Install complete!"
	clear
	echo "$(tput setaf 3)Attention! $(tput setab 7)Install complete.$(tput sgr 0)"
	exit
}
notcompatible ()
{
bits=`uname -m`
echo "Incompatible CPU/Architecture: (`uname -m`)"
zenity --info --text="Incompatible CPU/Architecture: $bits"
}
uname -m | if grep -q 64; then allpackageamd; else notcompatible; fi
