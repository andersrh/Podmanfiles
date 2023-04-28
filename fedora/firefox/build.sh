#!/bin/sh

APPNAME="firefox"

podman build -t andersrh/fedora/$APPNAME -f Dockerfile .
distrobox create --image andersrh/fedora/$APPNAME $APPNAME
distrobox enter $APPNAME -- distrobox-export --app $APPNAME