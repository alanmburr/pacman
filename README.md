# Pacman for Ubuntu, Windows, and soon macOS
## Ubuntu
If you don't have git installed, open a terminal and type ```sudo apt install git``` then continue to the next code snippet. If you do, start at the code snippet.
```bash
git clone https://github.com/wackyblackie/pacman
cd pacman/ubuntu && sh install.sh
```
## Windows
If you don't have git installed, start at here. If you do, start at the code snippet. 
[Download git here.](https://git-scm.com/download/win)
Save and run the file. Finish setup before continuing. 
Press ```Win+r```. 
```cmd
cmd.exe {ENTER/Return or press OK}
git clone https://github.com/wackyblackie/pacman
cd pacman\windows && programinstaller.bat
```
## macOS
If you don't have Homebrew and Git installed, start here. If you do, start at the 2nd code snippet.
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install git
```
Use ```/bin/bash``` instead of ```bin/zsh```. Using ```ZSH``` will cause the installer to fail.
```bash
git clone https://github.com/wackyblackie/pacman
cd pacman/macos && sh install.sh
```
### The name "Pacman" was inherited from Arch Linux.
