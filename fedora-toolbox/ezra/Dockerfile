FROM localhost/andersrh/fedora-toolbox/gui

WORKDIR /app

RUN wget https://github.com/ezra-bible-app/ezra-bible-app/releases/download/1.10.0/ezra-bible-app_fedora37-1.10.0.rpm -O app.rpm \
&& yum localinstall -y app.rpm && rm -f app.rpm && dnf clean all