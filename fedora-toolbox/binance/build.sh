#!/bin/sh

podman build -t andersrh/fedora-toolbox/binance -f Dockerfile .
distrobox create --image andersrh/fedora-toolbox/binance --home ~/containers/binance/ binance
distrobox enter binance -- distrobox-export --app binance --extra-flags "--enable-features=WaylandWindowDecorations --ozone-platform=wayland"