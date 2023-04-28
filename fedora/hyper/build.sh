#!/bin/sh

APPNAME="hyper"

podman build -t andersrh/fedora/$APPNAME -f Dockerfile .
distrobox create --image andersrh/fedora/$APPNAME --home ~/containers/$APPNAME/ $APPNAME
distrobox enter $APPNAME -- distrobox-export --app $APPNAME --extra-flags "--enable-features=WaylandWindowDecorations --ozone-platform=wayland"