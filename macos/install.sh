if [ "$(id -u)" != "0" ]; then
  exec sudo "sh" "install.sh"
fi
path="/Library/minstall86"
appfolder="/Applications"
cp -R Visual\ Studio\ Code.app $path
allpackageamd ()
{
	#chrome install
	cd $path
	temp=$TMPDIR$(uuidgen)
	mkdir -p $temp/mount
	curl https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg > $temp/1.dmg
	yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg
	cp -r $temp/mount/*.app $appfolder
	hdiutil detach $temp/mount
	rm -r $temp
	#VLC install
	cd $path
	temp=$TMPDIR$(uuidgen)
    mkdir -p $temp/mount
    curl https://get.videolan.org/vlc/3.0.11/macosx/vlc-3.0.11.dmg > $temp/1.dmg
    yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg
    cp -r $temp/mount/*.app $appfolder
    hdiutil detach $temp/mount
    rm -r $temp
	#VS code & nanoinstall
	cd $path
	cp -R Visual\ Studio\ Code.app $appfolder
	echo "Install Finished!"
	osascript -e 'tell application "SystemUIServer" to display dialog "Program install finished." end'
	exit
}
sh startup.sh
allpackageamd
#while true; do
#read -rsn1 chrome
#if [ "$chrome" = "yn"]
