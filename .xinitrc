#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

# Java fix
wmname LG3D &

setxkbmap latam &
##xcompmgr &
compton --config ~/.compton.conf -b &
u1sdtool -c &
xset -dpms; xset s off &
#wine /home/ijara/.wine/drive_c/Program\ Files\ \(x86\)/Naver/LINE/Line.exe &
#xfce4-volumed &
exec awesome
