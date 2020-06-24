if [ "$(id -u)" != "0" ]; then
  exec sudo "sh" "startup.sh"
fi
echo "Using mkdir to make a directory in '/lib'. The directory will be named 'linstall86'."
mkdir /lib/linstall86
ls /lib/linstall86
cp bin -r /lib/linstall86/bin
cd ..
cp aptinstall -r /lib/linstall86
cd /lib/linstall/aptinstall
rm bin
echo "Removing 'bin' as it s already here."
clear
echo "Packages to install: VLC, Visual Studio Code, Google Chrome. Packages already installed: Firefox, Python, LibreOffice, Chrome PDF Viewer"
echo "Your computer will restart after this installation. Please save all your work."
#while true; do
#	read -p "Do you want to restart directly after the installation? (y,n)" ynx
#	case $ynx in 
#		[Yy]* ) ; break;;
#		[Nn]* ) vlcinstall;;
 #   [Xx]* ) exit; exit; exit;;
	#	* ) "plz type 'y', 'Y', 'n' or 'N'. Thx."
#	esac
#done