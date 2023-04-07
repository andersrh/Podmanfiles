FROM localhost/andersrh/fedora-toolbox/gui

WORKDIR /app

RUN wget "https://vault.bitwarden.com/download/?app=desktop&platform=linux&variant=rpm" -O bitwarden.rpm \
&& yum localinstall -y bitwarden.rpm && rm -f bitwarden.rpm && dnf clean all