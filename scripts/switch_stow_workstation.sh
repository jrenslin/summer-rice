#!/bin/bash

rm -f /home/jrenslin/.config/i3/config
ln -s /home/jrenslin/Sync/Programming/dotfiles/juicy/i3-workstation/.config/i3/config /home/jrenslin/.config/i3/config

stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "cava"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "conky"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "dunst"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "firefox_home"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "i3blocks"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "khal"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "khard"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "mpd"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "mpv"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "mutt"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "ncmpcpp"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "neofetch"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "newsbeuter"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "spacemacs"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "scripts"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "termite"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "vdirsyncer"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "weechat"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "Xresources"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "yabar"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/summer/" -D "youtube-dl"

stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "cava"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "conky"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "dunst"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "firefox_home"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "i3blocks"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "khal"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "khard"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "mpd"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "mpv"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "mutt"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "ncmpcpp"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "neofetch"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "newsbeuter"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "spacemacs"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "scripts"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "termite"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "vdirsyncer"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "weechat"

stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "Xresources"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "yabar"
stow -t /home/jrenslin/ -d "/home/jrenslin/Sync/Programming/dotfiles/juicy/" "youtube-dl"

i3-msg restart

feh --randomize --bg-scale ~/Sync/Images/Wallpapers/with_space_left/* &

killall dunst;notify-send "Switched theme to juicy"

killall conky

sleep 1
conky -q -d -c ~/.config/conky/load-rarely/conky-clock.conf
sleep 1
conky -q -d -c ~/.config/conky/conky-sys-stats.conf
sleep 1
conky -q -d -c ~/.config/conky/load-rarely/conky-tasks-khal.conf
sleep 1
conky -q -d -c ~/.config/conky/load-rarely/conky-mpd.conf
sleep 1
conky -q -d -c ~/.config/conky/tiles/conky-files-sync.conf
sleep 1
conky -q -d -c ~/.config/conky/tiles/conky-files-notes.conf
sleep 1
conky -q -d -c ~/.config/conky/tiles/conky-files-pictures.conf
sleep 1
conky -q -d -c ~/.config/conky/tiles/conky-files-cache.conf
