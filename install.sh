if [ "$(id -u)" != "0" ]; then
  exec sudo "sh" "install.sh"
fi
sh startup.sh
allpackage ()
{
	#chrome install
	cd /lib/linstall86
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	apt install ./google-chrome-stable_current_amd64.deb
	google-chrome
	#VLC install
	sudo snap VLC
	#VS code install
	sudo snap install --classic code
}
while true; do
	read -p "Do you want to install all packages? (y,n)" ynx
	case $ynx in 
		[Yy]* ) allpackage; break;;
		[Nn]* ) sh bin/chrome.sh;;
		[Xx]* ) exit; exit;;
		* ) "plz type 'y', 'Y', 'n' or 'N'. Thx."
	esac
done
#while true; do
#read -rsn1 chrome
#if [ "$chrome" = "yn"]

