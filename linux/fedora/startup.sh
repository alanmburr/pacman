if [ "$(id -u)" != "0" ]; then
  exec sudo "sh" "startup.sh"
fi
cd ../..
rm -r windows
rm -r mac
cd linux
rm -r ubuntu
rm-r debian-rpios
cd fedora
echo "Using mkdir to make a directory in '/lib'. The directory will be named 'linstall86'."
mkdir /lib/linstall86
cp install.sh /lib/lnstall86/install.sh
cp startup.sh /lib/linstll86/startup.sh
cd /lib/linstall86
mkdir /lib/linstall86/bin
clear
amd="Packages to install: VLC, Visual Studio Code, Google Chrome. Packages already installed: Firefox, Python, LibreOffice, Chrome PDF Viewer"
other="Packages to install: mpv, Notepad++, Chromium. Packages already installed: Firefox, Python LibreOffice, Chrome PDF Viewer"
uname -m | if grep -q 64; then echo $amd; else echo $other; fi
echo "$(tput setaf 1)Attention: $(tput setab 7)You should restart this installation. If you are dual-booting, be sure to boot back into this OS.$(tput sgr 0)"
