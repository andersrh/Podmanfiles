FROM localhost/andersrh/fedora-toolbox/base

RUN dnf install -y at-spi2-core gtk3 libXScrnSaver libXtst xdg-utils && dnf clean packages
RUN dnf install -y libglvnd-gles && dnf clean packages
RUN dnf install -y mesa-dri-drivers mesa-vulkan-drivers vulkan && dnf clean packages
RUN dnf install -y libva