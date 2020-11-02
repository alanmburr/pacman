# Pacman for Linux, Windows, macOS
- [Windows 7/8.x/10](#windows)
- [macOS X 10.13 ➕](#macos)
- [Linux: Debian-based, Fedora, Arch Linux](#linux)
## Linux
### Ubuntu 16.04 :heavy_plus_sign:
If you don't have git installed, 
[start here](https://github.com/wackyblackie/pacman/blob/master/linux/ubuntu/README.md). If you do, start at the code snippet.
```bash
#!/bin/bash
$ git clone https://github.com/wackyblackie/pacman $HOME/pacman
$ sh $HOME/pacman/linux/installl.sh
```
:heavy_check_mark: Tested and works! :heavy_check_mark:
### Debian-based ([see here](https://github.com/wackyblackie/pacman/blob/master/linux/debian/README.md) for compatibility)
If you don't have git installed,
[start here](https://github.com/wackyblackie/pacman/blob/master/linux/debian/README.md). If you do, start at the code snippet.
```bash
#!/bin/bash
$ git clone https://github.com/wackyblackie/pacman $HOME/pacman
$ sh $HOME/pacman/linux/install.sh
```
:heavy_check_mark: Tested and works! :heavy_check_mark:
### Fedora 22 :heavy_plus_sign:
If you don't have git installed, [start here](https://git-scm.com/download/linux#fedora). If you do, start at the code snippet.
```bash
#!/bin/bash
$ git clone https://github.com/wackyblackie/pacman $HOME/pacman
$ sh $HOME/pacman/install.sh
```
:heavy_check_mark: Tested and works! :heavy_check_mark:
### Arch Linux
If you don't have Git installed,
[start here](https://github.com/wackyblackie/pacman/blob/master/linux/arch/README.md). If you do, start at the code snippet.
```zsh
#!/bin/zsh
$ git clone https://github.com/wackyblackie/pacman $HOME/pacman
$ sh $HOME/pacman/linux/install.sh
```
:heavy_check_mark: Tested and works! :heavy_check_mark:
## Windows
### Windows 7/8.x/10
If you don't have git installed, 
[start here](https://github.com/wackyblackie/pacman/blob/master/windows/README.md). If you do, start at the code snippet.
```bash
#!%systemdrive%\Windows\System32\cmd.exe
> git clone https://github.com/wackyblackie/pacman %USERPROFILE%\Downloads\pacman
> %USERPROFILE%\Downloads\pacman\windows\programinstaller.bat
```
:heavy_check_mark: Tested and works! :warning: LEGO:registered: Mindstorms install may not work properly. :heavy_check_mark:
## macOS
### macOS X 10.13 :heavy_plus_sign:
If you don't have Homebrew and Git installed, 
[start here](https://github.com/wackyblackie/pacman/blob/master/macos/README.md). If you do, start at the code snippet.
```bash
#!/bin/bash
$ git clone https://github.com/wackyblackie/pacman $HOME/pacman
$ sh $HOME/pacman/macos/install.sh
```
:warning: Warning! This has not been tested on macOS and it might not work. :warning:
##### The name "Pacman" was inherited from Arch Linux.
