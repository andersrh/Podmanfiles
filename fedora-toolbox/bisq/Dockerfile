FROM localhost/andersrh/fedora-toolbox/base-gui

WORKDIR /app
ENV JAVA_TOOL_OPTIONS "-Dglass.gtk.uiScale=2"
RUN wget https://github.com/bisq-network/bisq/releases/download/v1.9.9/Bisq-64bit-1.9.9.rpm \
&& yum localinstall -y Bisq-64bit-1.9.9.rpm && rm -f Bisq-64bit-1.9.9.rpm && dnf clean all