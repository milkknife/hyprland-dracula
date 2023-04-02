export EDITOR=/usr/bin/vis
export VISUAL=$EDITOR
export QT_QPA_PLATFORMTHEME=qt6ct
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORM="wayland;xcb"
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export _JAVA_AWT_WM_NONEREPARENTING=1
export SDL_VIDEODRIVER=wayland
export GOROOT=/usr/lib/go
export GOPATH=~/src/go
export GOBIN=$GOPATH/bin

if [ -z "$SSH_AUTH_SOCK" ] ; then
	eval `ssh-agent -s -t 1800`
fi

if [ -z $DISPLAY ] && [ $(tty) = "/dev/tty1" ]; then
	clear && exec dbus-run-session Hyprland > /dev/null 2>&1
fi
