FROM docker pull ghcr.io/xaocon/image-network-debug:latest

ARG GCLOUD_VERSION=368.0

RUN apk add --no-cache python3 \
    && mkdir /opt
    && cd /opt
    && curl -LO https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${GCLOUD_VERSION}-linux-x86_64.tar.gz
    && tar xaf google-cloud-sdk-${GCLOUD_VERSION}-linux-x86_64.tar.gz
    && rm google-cloud-sdk-${GCLOUD_VERSION}-linux-x86_64.tar.gz
    && curl -o rustup-init.sh --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs

CMD ["/usr/bin/fish", "-l"]
