#!/bin/sh

podman build -t andersrh/fedora-toolbox/base-gui --no-cache -f update.Dockerfile 
podman tag localhost/andersrh/fedora-toolbox/base-gui:latest localhost/andersrh/fedora-toolbox/base-gui:38
# podman build -t andersrh/fedora-toolbox/gui -f gui.Dockerfile .