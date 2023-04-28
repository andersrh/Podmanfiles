FROM localhost/andersrh/fedora-toolbox/base-gui

WORKDIR /app
RUN wget https://download.binance.com/electron-desktop/linux/production/binance-x86_64-linux.rpm \
&& rpm -i binance-x86_64-linux.rpm && rm -f binance-x86_64-linux.rpm \
&& dnf clean all

COPY bin/app /usr/local/bin
RUN chmod +x /usr/local/bin/app