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
if [ `getconf LONG_BIT` = "64" ]
then
    sh startup.sh
    allpackageamd
else
  echo "$(tput setaf 3)Attention! $(tput setab 7)Your system is not compatible with this installer. Use an amd64 system for this.$(tput sgr 0)"
  xmessage "Your system is not compatible with this program." -center
fi
#while true; do
#read -rsn1 chrome
#if [ "$chrome" = "yn"]
