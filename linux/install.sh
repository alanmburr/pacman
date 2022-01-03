#!/usr/bin/env /usr/bin/bash
#    Copyright (C) 2020-2022 Alan Burr <alanburr25@gmail.com>

#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.

#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.

#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.

if [[ -f /usr/bin/apt ]] && [[ grep 'ID=ubuntu' /etc/os-release >/dev/null ]]; then
    ubuntu/install.sh
elif [[ -f /usr/bin/apt]] && [[ grep 'ID=debian' /etc/os-release >/dev/null ]]; then
    debian/install.sh
elif [[ -f /usr/bin/dnf ]]; then
    fedora/install.sh
elif [[ -f /usr/bin/pacman ]]; then
    arch/install.sh
