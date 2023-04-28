#!/bin/sh

APPNAME="tradingview"

podman build -t andersrh/archlinux/$APPNAME -f Dockerfile .
podman rm -f $APPNAME
distrobox create --image andersrh/archlinux/$APPNAME --init --home ~/containers/$APPNAME/ $APPNAME
distrobox enter $APPNAME -- yay -S --noconfirm tradingview
podman commit $APPNAME andersrh/archlinux/$APPNAME
podman rm -f $APPNAME
distrobox create --image andersrh/archlinux/$APPNAME --home ~/containers/$APPNAME/ $APPNAME
distrobox enter $APPNAME -- distrobox-export --app $APPNAME --extra-flags "--enable-features=WaylandWindowDecorations --ozone-platform=wayland"