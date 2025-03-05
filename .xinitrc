#!/bin/sh

LANG=ja_JP.UTF-8

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# NVidiaのGPUを使用する際、モニタをスタンバイモードに移行させると
# 復帰時にpicomがフリーズする。
# 仕方ないので、時間経過で勝手にスタンバイモードに入らないようにする。
xset s off -dpms

# launch the desktop environment
fcitx5 &
sh ~/.fehbg &
xbindkeys
exec xmonad
