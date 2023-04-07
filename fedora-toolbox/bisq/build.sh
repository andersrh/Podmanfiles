#!/bin/sh

podman build -t andersrh/fedora-toolbox/bisq -f Dockerfile .
distrobox create --image andersrh/fedora-toolbox/bisq --home ~/containers/bisq/ bisq
distrobox enter bisq -- distrobox-export --app bisq