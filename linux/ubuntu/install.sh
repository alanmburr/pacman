if [ "$(id -u)" != "0" ]; then
  exec sudo "sh" "install.sh"
fi
newubuntu ()
{
badfile ()
{
FILEA=/var/lib/dpkg/lock
FIlEB=/var/lib/dpkg/lock-frontend
if [ -f $FILEA -a -f $FILEB ]; then
    rm -r /var/lib/dpkg/lock
    rm -r /var/lib/dpkg/lock-frontend
    if [ `getconf LONG_BIT` = "64" ]; then
    	dpkg --configure -a
    fi
fi
}
export DISPLAY=:0
allpackageamd ()
{
	#chrome install
	cd /lib/linstall86/bin
	apt install curl -y
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	badfile
	dkpg -i google-chrome-stable_current_amd64.deb -y
	apt install -f
	google-chrome
	#VLC install
	cd /lib/linstall86/bin
	snap install vlc
	#VS code & nanoinstall
	cd /lib/linstall86/bin
	badfile
	snap install code --classic
	badfile
	apt install nano -y
	badfile
	apt install vi -y
	echo "Also installed nano and vi."
	if [ ! -f /usr/bin/zenity]; then
    	    xmessage "Install complete!" -center
	else
	    zenity --info --text="Install complete! Feel free to use your computer with your newly added software an updated software."
	fi
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
	echo "Running dpkg to free up resources, and them rebuild them."
	apt install mpv -y
	echo "$(tput setaf 3)Attention! $(tput setab 7)Visual Studio Code isn't compatible with your architecture; another editor, Notepad++ will be installed.$(tput sgr 0)"
	snap install notepad-plus-plus
	if [ ! -f /usr/bin/zenity]; then
    	    xmessage "Install complete!" -center
	else
	    zenity --info --text="Install complete! Feel free to use your computer with your newly added software an updated software."
	fi
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
}
oldubuntu ()
{
echo "Your version of Ubuntu (`grep VERSION_ID`) is not supported. If this computer belongs to an organization, contact your system administrator for a Distrobution Upgrade."
zenity --info --text="Your version of Ubuntu is not supported."
}
if egrep -qo "16*|17*|18*|19*|20*|21*|22*|23*" /etc/os-release; then newubuntu; else oldubuntu; fi
#while true; do
#read -rsn1 chrome
#if [ "$chrome" = "yn"]
