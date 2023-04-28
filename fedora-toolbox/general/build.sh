#!/bin/sh

APPNAME="general"

podman build -t andersrh/fedora-toolbox/$APPNAME -f Dockerfile .
#toolbox create --image andersrh/fedora-toolbox/$APPNAME $APPNAME
distrobox create --image andersrh/fedora-toolbox/$APPNAME --home ~/containers/$APPNAME/ $APPNAME
distrobox enter $APPNAME -- distrobox-export --bin /usr/bin/htop -ep ~/.local/bin/
distrobox enter $APPNAME -- distrobox-export --bin /usr/bin/xwininfo -ep ~/.local/bin/
distrobox enter $APPNAME -- distrobox-export --bin /usr/bin/ffmpeg -ep ~/.local/bin/
distrobox enter $APPNAME -- distrobox-export --bin /usr/bin/yt-dlp -ep ~/.local/bin/
distrobox enter $APPNAME -- distrobox-export --bin /usr/bin/neofetch -ep ~/.local/bin/
distrobox enter $APPNAME -- distrobox-export --bin /usr/bin/dnstop -ep ~/.local/bin/