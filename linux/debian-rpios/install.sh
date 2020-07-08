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
    if [ `getconf LONG_BIT` = "64" ]; then
    	dpkg --configure -a
    else
    #nothing
    fi
fi
}
allpackageamd ()
{
  #snap store install
  sudo apt install snapd
	#chrome install
	cd /lib/linstall86/bin
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	apt install ./google-chrome-stable_current_amd64.deb
	#VLC install
	cd /lib/linstall86/bin
	snap install vlc
	#VS code & nanoinstall
	cd /lib/linstall86/bin
	#badfile
	snap install code --classic
	#badfile
	apt install nano
	#badfile
	apt install vi
	echo "Also installed nano and vi."
	xmessage "Install complete!" -center
	clear
	echo "$(tput setaf 3)Attention! $(tput setab 7)Install complete.$(tput sgr 0)"
	exit
}
notcompatible ()
{
bits=`uname -m`
echo "Incompatible CPU/Architecture: (`uname -m`)"
xmessage "Incompatible CPU/Architecture: $bits" -center
}
uname -m | if grep -q 64; then allpackageamd; else notcompatible; fi
