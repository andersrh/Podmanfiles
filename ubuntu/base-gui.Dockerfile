FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y && apt clean
RUN apt install -y fish htop nano firejail bash apt-utils bc curl dialog diffutils findutils gnupg2 less libnss-myhostname libvte-2.91-common libvte-common lsof ncurses-base passwd pinentry-curses procps sudo time wget util-linux libegl1-mesa libgl1-mesa-glx libvulkan1 mesa-vulkan-drivers libva2 libva-wayland2 libva-glx2 libva-drm2 libva-x11-2 intel-media-va-driver va-driver-all && apt clean
RUN apt install -y gconf2 gconf-service libnotify4 libappindicator1 libnss3 libsecret-1-dev gnome-keyring && apt clean
RUN apt install -y libasound2 libgles2 && apt clean