FROM docker.io/library/archlinux

WORKDIR /app

RUN pacman -Syu --noconfirm --needed git base-devel
RUN useradd -m --shell=/bin/false build && usermod -L build
RUN echo "build ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN echo "root ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN chown -R build /app
USER build
RUN git clone https://aur.archlinux.org/yay.git \
&& cd yay \
&& makepkg -si --noconfirm \
&& rm -rf /app/*
USER root
RUN pacman -Sy --noconfirm bash bc curl diffutils findutils gnupg less lsof ncurses pinentry procps-ng shadow sudo time util-linux wget vte-common
RUN pacman -Sy --noconfirm mesa opengl-driver vulkan-intel vulkan-radeon
RUN pacman -Sy --noconfirm fish htop
RUN pacman -Sy --noconfirm libva libva-intel-driver libva-mesa-driver libva-utils intel-media-driver
RUN pacman -Sy --noconfirm nss atk cups gtk3 alsa-lib
RUN pacman -Sy --noconfirm xdg-utils
RUN pacman -Sy --noconfirm nano ibus dbus-glib