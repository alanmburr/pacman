if [ "$(id -u)" != "0" ]; then
  exec sudo "sh" "startup.sh"
fi
cd ../..
rm -r windows
rm -r mac
echo "Using mkdir to make a directory in '/lib'. The directory will be named 'linstall86'."
mkdir /lib/linstall86 
cd linux/arch
cp install.sh /lib/lnstall86/install.sh
cp startup.sh /lib/linstll86/startup.sh
cd /lib/linstall86
mkdir /lib/linstall86/bin
clear
echo "Packages to install: VLC, Visual Studio Code, Chromium, Firefox. Packages already installed: Python, LibreOffice, PDF Viewer"
#echo "$(tput setaf 1)Attention: $(tput setab 7)Your computer will restart after this installation. If you are dual-booting, be sure to boot back into this OS.$(tput sgr 0)"
