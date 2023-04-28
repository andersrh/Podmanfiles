#!/bin/sh

APPNAME="firefox"

podman build -t andersrh/fedora-toolbox/$APPNAME -f Dockerfile .
distrobox create --image andersrh/fedora-toolbox/$APPNAME $APPNAME
distrobox enter $APPNAME -- distrobox-export --app $APPNAME