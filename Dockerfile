FROM debian:bullseye

RUN set -x \
    && apt-get update \
    && apt-get -y install tinyproxy \
    && apt-get clean

COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

EXPOSE 8888

CMD ["tinyproxy", "-d"]
