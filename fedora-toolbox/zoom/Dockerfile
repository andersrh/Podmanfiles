FROM localhost/andersrh/fedora-toolbox/base-gui

WORKDIR /app

RUN wget https://zoom.us/client/latest/zoom_x86_64.rpm -O app.rpm \
&& yum localinstall -y app.rpm && rm -f app.rpm && wget https://zoom.us/linux/download/pubkey?version=5-12-6 -O key.pub && rpm --import key.pub && rm -f key.pub && dnf clean all