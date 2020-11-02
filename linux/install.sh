#!/usr/bin/env /usr/bin/bash
if [[ -f /usr/bin/apt ]] && [[ grep 'ID=ubuntu' /etc/os-release >/dev/null ]]; then
    ubuntu/install.sh
elif [[ -f /usr/bin/apt]] && [[ grep 'ID=debian' /etc/os-release >/dev/null ]]; then
    debian/install.sh
elif [[ -f /usr/bin/dnf ]]; then
    fedora/install.sh
elif [[ -f /usr/bin/pacman ]]; then
    arch/install.sh
