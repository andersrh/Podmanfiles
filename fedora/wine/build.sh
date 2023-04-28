#!/bin/sh

APPNAME="wine"

podman build -t andersrh/fedora/$APPNAME -f Dockerfile .
distrobox create --image andersrh/fedora/$APPNAME --home ~/containers/$APPNAME/ $APPNAME