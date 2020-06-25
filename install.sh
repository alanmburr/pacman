if [ "$(id -u)" != "0" ]; then
  exec sudo "sh" "install.sh"
fi
sh startup.sh
allpackage ()
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
	apt install software-properties-common apt-transport-https wget
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
	add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
	apt update
	apt install code
	apt install nano
	apt install vi
	echo "Also installed nano and vi. yk, jic."
}
allpackage
shutdown -r now
#while true; do
#read -rsn1 chrome
#if [ "$chrome" = "yn"]
