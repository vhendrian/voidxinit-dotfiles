#!/bin/sh

# I don't know what these lines below do
# I just find them in default .xinitrc
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Make file-manager always launched with DBUS
# Without this, mounting, unmounting, trash, etc won't work in Thunar
if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS";
then
	eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

# Make scripts on .local/bin read
if [ -d "$HOME/.local/bin" ] ; then

   PATH="$HOME/.local/bin:$PATH"

fi

xrdb -merge ~/.Xresources


# Launch wm
#exec instantwm
#exec nimdow
exec dwm
#exec river
#exec dk
#exec xmonad
#exec berry
#exec awesome
#exec herbstluftwm
#exec qtile start
#exec spectrwm

