#!/bin/sh

APPNAME="ezra"

podman build -t andersrh/fedora-toolbox/$APPNAME -f Dockerfile .
distrobox create --image andersrh/fedora-toolbox/$APPNAME --home ~/containers/$APPNAME/ $APPNAME
distrobox enter $APPNAME -- distrobox-export --app $APPNAME