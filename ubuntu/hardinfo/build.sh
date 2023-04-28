#!/bin/sh

APPNAME="hardinfo"

podman build -t andersrh/ubuntu/$APPNAME -f Dockerfile .
distrobox create --image andersrh/ubuntu/$APPNAME --home ~/containers/$APPNAME/ $APPNAME
distrobox enter $APPNAME -- distrobox-export --app $APPNAME 