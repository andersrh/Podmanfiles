#!/bin/sh

podman build -t andersrh/fedora-toolbox/bitwarden -f Dockerfile .
distrobox create --image andersrh/fedora-toolbox/bitwarden --home ~/containers/bitwarden/ bitwarden
distrobox enter bitwarden -- distrobox-export --app bitwarden --extra-flags "--enable-features=WaylandWindowDecorations --ozone-platform=wayland"