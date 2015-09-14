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

xrdb ~/.Xresources

DEFAULTSESSION=awesome

case "$1" in
	awesome) exec awesome ;;
	openbox) exec openbox-session ;;
	xfce) exec xfce4-session ;;
	gnome3) exec gnome-session ;;
	kde) exec startkde ;;
	cinnamon) exec gnome-session-cinnamon ;;
	razor-qt) exec razor-session ;;
	lxde) exec lxsession ;;
	mate) exec mate-session ;;
	*) exec	$DEFAULTSESSION ;;
esac

#exec gnome-session
# exec startkde
# exec startxfce4
# awesome &
# exec ck-launch-session gnome-session
# exec awesome
# exec i3
# ...or the Window Manager of your choice
