FROM registry.fedoraproject.org/fedora-toolbox:37

RUN dnf update -y && dnf clean packages
RUN dnf install -y fish htop nano firejail && dnf clean packages
RUN dnf install -y libnotify nss && dnf clean packages
RUN dnf install -y --allowerasing bash bc curl diffutils dnf-plugins-core findutils gnupg2 less lsof ncurses passwd pinentry procps-ng shadow-utils sudo time util-linux wget vte-profile \
&& dnf clean packages