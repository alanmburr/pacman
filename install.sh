if [ "$(id -u)" != "0" ]; then
  exec sudo "sh" "install.sh"
fi
badfile ()
{
FILEA=/var/lib/dpkg/lock
FIlEB=/var/lib/dpkg/lock-frontend
if [ -f $FILEA -a -f $FILEB ]; then
    rm -r /var/lib/dpkg/lock
    rm -r /var/lib/dpkg/lock-frontend
fi
}

allpackageamd ()
{
	#chrome install
	cd /lib/linstall86/bin
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	badfile
	apt install ./google-chrome-stable_current_amd64.deb
	google-chrome
	#VLC install
	cd /lib/linstall86/bin
	snap install vlc
	#VS code & nanoinstall
	cd /lib/linstall86/bin
	badfile
	snap install code --classic
	badfile
	apt install nano
	badfile
	apt install vi
	echo "Also installed nano and vi."
	xmessage "Install complete!" -center
	clear
	echo "$(tput setaf 3)Attention! $(tput setab 7)Install complete. Closing the Terminal.$(tput sgr 0)"
	exit
}
iarchpackages ()
{
	echo "$(tput setaf 3)Attention! $(tput setab 7)Chrome isn't compatible with architecture; Chromium, open source of Chrome will be installed.$(tput sgr 0)"
	snap install chromium
	echo "$(tput setaf 3)Attention! $(tput setab 7)VLC isn't compatible with your architecture; another video player, mpv, vill be installed.$(tput sgr 0)"
	badfile
	dpkg --configure -a
	echo "Running dpkg to free up resources, and them rebuild them."
	apt install mpv
	echo "$(tput setaf 3)Attention! $(tput setab 7)Visual Studio Code isn't compatible with your architecture; another editor, Notepad++ will be installed.$(tput sgr 0)"
	snap install notepad-plus-plus
	xmessage "Install complete!" -center
	clear
	echo "$(tput setaf 3)Attention! $(tput setab 7)Install complete. Closing the Terminal.$(tput sgr 0)"
}
if [ `getconf LONG_BIT` = "64" ]
then
    sh startup.sh
    allpackageamd
else
    sh startup.sh
    echo "$(tput setaf 3)Attention! $(tput setab 7)Installing other packages, not preferred ones.$(tput sgr 0)"
    iarchpackages
fi
#while true; do
#read -rsn1 chrome
#if [ "$chrome" = "yn"]
