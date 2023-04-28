FROM localhost/andersrh/fedora-toolbox/base-gui

WORKDIR /app

RUN wget https://github.com/Eugeny/tabby/releases/download/v1.0.196/tabby-1.0.196-linux-x64.rpm -O app.rpm \
&& yum localinstall -y app.rpm && rm -f app.rpm && dnf clean all