if [ "$(id -u)" != "0" ]; then
  exec sudo "sh" "install.sh"
fi
allpackageamd ()
{
	#chrome install
	cd /lib/linstall86/bin
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	apt install ./google-chrome-stable_current_amd64.deb
	google-chrome
	#VLC install
	cd /lib/linstall86/bin
	snap install vlc
	#VS code & nanoinstall
	cd /lib/linstall86/bin
	rm -r /var/lib/dpkg/lock
	rm -r /var/lib/dpkg/lock-frontend
	apt install software-properties-common apt-transport-https wget
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
	add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
	rm -r /var/lib/dpkg/lock
	rm -r /var/lib/dpkg/lock-frontend
	apt update
	rm -r /var/lib/dpkg/lock
	rm -r /var/lib/dpkg/lock-frontend
	apt install code
	rm -r /var/lib/dpkg/lock
	rm -r /var/lib/dpkg/lock-frontend
	apt install nano
	rm -r /var/lib/dpkg/lock
	rm -r /var/lib/dpkg/lock-frontend
	apt install vi
	echo "Also installed nano and vi. yk, jic."
}
MACHINE_TYPE=`uname -m`
if [ ${MACHINE_TYPE} == 'x86_64' ]; then
  sh startup.sh
  allpackage
else
  echo "$(tput setaf 3)Attention! $(tput setab 7)Your system is not compatible with this installer. Use an amd64 system for this.$(tput sgr 0)"
  xmessage "Your system is not compatible with this program." -center
fi
#while true; do
#read -rsn1 chrome
#if [ "$chrome" = "yn"]
