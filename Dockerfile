FROM debian:bookworm-slim
ENV CDM_VERSION=5.3.1
RUN useradd -m -s /bin/bash user
RUN apt-get update && \
    apt-get install python3-minimal python3-setuptools python3-pip python3-wheel -y --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* && \
    apt-get clean
RUN rm -f /usr/lib/python3.11/EXTERNALLY-MANAGED && \
    pip3 install checkdmarc=="${CDM_VERSION}" && \
    rm -rf /root/.cache
RUN apt-get purge python3-setuptools python3-pip python3-wheel --autoremove -y && \
    apt-get clean
USER user
ENTRYPOINT [ "checkdmarc" ]