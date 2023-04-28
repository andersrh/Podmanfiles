FROM localhost/andersrh/fedora/base-gui

WORKDIR /app

RUN wget https://releases.hyper.is/download/rpm -O app.rpm \
&& yum localinstall -y app.rpm && rm -f app.rpm && dnf install -y dejavu-sans-mono-fonts && dnf clean all
COPY ./bin/fish_on_host /app/
RUN chmod +x /app/fish_on_host