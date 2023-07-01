#!/bin/sh

podman build -t andersrh/fedora/base-gui --no-cache -f update.Dockerfile 
podman tag localhost/andersrh/fedora/base-gui:latest localhost/andersrh/fedora/base-gui:38
# podman build -t andersrh/fedora-toolbox/gui -f gui.Dockerfile .