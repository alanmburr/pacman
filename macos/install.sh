if [ "$(id -u)" != "0" ]; then
  exec sudo "sh" "install.sh"
fi
path="/Library/minstall86"
appfolder="/Applications"
#echo $path + ", " + $appfolder
echo "This has not been tested. It may be unstable."
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
   	curl https://get.videolan.org/vlc/3.0.11/macosx/vlc-3.0.11.dmg > $temp/2.dmg
    	yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/2.dmg
    	cp -r $temp/mount/*.app $appfolder
    	hdiutil detach $temp/mount
    	rm -r $temp
	#VS code & nanoinstall
	cd $path
	temp=$TMPDIR$(uuidgen)
   	mkdir -p $temp/mount
   	curl https://az764295.vo.msecnd.net/stable/cd9ea6488829f560dc949a8b2fb789f3cdc05f5d/VSCode-darwin-stable.zip > $temp/1.zip
    	unzip $temp/1.zip
    	cp -r $temp/1/*.app $appfolder
    	rm -r $temp
	#LEGO Mindstorms install
	cd $path
	echo "This might not work, as Mindstorms is not reliable on macOS."
	temp=$TMPDIR$(uuidgen)
   	mkdir -p $temp/mount
   	curl https://le-www-live-s.legocdn.com/downloads/LME-Scratch/LME-Scratch_Full-setup_1.1.1_en-US_MacOS.dmg > $temp/3.dmg
    	yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/3.dmg
    	cp -r $temp/mount/*.app $appfolder
    	hdiutil detach $temp/mount
    	rm -r $temp
	echo "Install Finished!"
	osascript -e 'tell application "SystemUIServer" to display dialog "Program install finished." end'
	exit
}
nocompat () 
{
osascript -e 'tell application "SystemUIServer" to display dialog "Install Stopped. Your architecture is not compatible." end'
echo "Incompatible Architecture: (`uname -m`)"
}
uname -m | if grep -q 64; then allpackageamd; else nocompat; fi
#while true; do uname -m | if grep -q 64; then echo "64-bit CPU (`uname -m`)"; else echo "32-bit CPU (`uname -m`)"; fi
#read -rsn1 chrome
#if [ "$chrome" = "yn"]
