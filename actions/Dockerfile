FROM debian:latest

RUN apt-get update && \
    apt-get install --yes --no-install-recommends \
    texlive-xetex && \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    fonts-font-awesome && \
    apt-get autoclean && apt-get --purge --yes autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
