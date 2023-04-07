#!/bin/sh

podman build -t andersrh/fedora-toolbox/base -f base.Dockerfile .
podman build -t andersrh/fedora-toolbox/gui -f gui.Dockerfile .