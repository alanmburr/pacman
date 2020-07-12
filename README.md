# Pacman for Linux, Windows, macOS
- [Windows 8.1/10](#windows)
- [macOS X 10.10 ➕](#macos)
- [Ubuntu](#ubuntu)
- [Debian/Raspbian](#debianraspbian)
- [Fedora 22 ➕](#fedora)
## Linux
### Ubuntu
If you don't have git installed, 
[start here](https://github.com/wackyblackie/pacman/blob/master/linux/ubuntu/README.md). If you do, start at the code snippet.
```bash
#!/bin/bash
git clone https://github.com/wackyblackie/pacman
cd pacman/linux/ubuntu && sh install.sh
```
:heavy_check_mark: Tested and works! :heavy_check_mark:
### Debian-based ([see here](https://github.com/wackyblackie/pacman/blob/master/linux/debian/README.md) for compatibility)
If you don't have git installed,
[start here](https://github.com/wackyblackie/pacman/blob/master/linux/debian/README.md). If you do, start at the code snippet.
```bash
#!/bin/bash
git clone https://github.com/wackyblackie/pacman
cd pacman/linux/debian && sh install.sh
```
:warning: Not tested. :warning:
### Fedora 22 :heavy_plus_sign:
Documentation coming soon!
### Arch Linux
If you don't have Git installed,
[start here](https://github.com/wackyblackie/pacman/blob/master/linux/arch/README.md). If you do, start at the code snippet.
```zsh
#!/bin/zsh
git clone https://github.com/wackyblackie/pacman
cd pacman/linux/arch && install.sh
```
## Windows
### Windows 8.1/10
If you don't have git installed, 
[start here](https://github.com/wackyblackie/pacman/blob/master/windows/README.md). If you do, start at the code snippet.
```bash
#!%systemdrive%\Windows\System32\cmd.exe
git clone https://github.com/wackyblackie/pacman
cd pacman\windows && programinstaller.bat
```
:heavy_check_mark: Tested and works! :warning: LEGO:registered: Mindstorms install may not work properly. :heavy_check_mark:
## macOS
### macOS X 10.10 :heavy_plus_sign:
If you don't have Homebrew and Git installed, 
[start here](https://github.com/wackyblackie/pacman/blob/master/macos/README.md). If you do, start at the code snippet.
```bash
#!/bin/bash
git clone https://github.com/wackyblackie/pacman
cd pacman/macos && sh install.sh
```
:warning: Warning! This has not been tested on macOS and it might not work. :warning:
#### The name "Pacman" was inherited from Arch Linux.
