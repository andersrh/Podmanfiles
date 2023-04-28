#!/bin/sh

podman build -t andersrh/ubuntu/base-gui -f base-gui.Dockerfile .
podman tag localhost/andersrh/ubuntu/base-gui:latest localhost/andersrh/ubuntu/base-gui:22.04
# podman build -t andersrh/fedora-toolbox/gui -f gui.Dockerfile .