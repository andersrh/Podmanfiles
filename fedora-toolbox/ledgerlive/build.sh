#!/bin/sh

APPNAME="ledgerlive"

podman build -t andersrh/fedora-toolbox/$APPNAME -f Dockerfile .
distrobox create --image andersrh/fedora-toolbox/$APPNAME --home ~/containers/$APPNAME/ $APPNAME
distrobox enter $APPNAME -- distrobox-export --bin /app/$APPNAME --export-path ~/.local/bin --extra-flags "--enable-features=WaylandWindowDecorations --ozone-platform=wayland"
cp ledgerlive.png ~/.local/share/icons/
cp ledgerlive.desktop ~/.local/share/applications/