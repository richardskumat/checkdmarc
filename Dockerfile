FROM debian:bookworm-slim
RUN useradd -m -s /bin/bash user
RUN apt-get update && \
    apt-get install python3-minimal python3-setuptools python3-pip python3-wheel git gcc -y --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* && \
    apt-get clean
RUN rm -f /usr/lib/python3.11/EXTERNALLY-MANAGED && \
    pip3 install checkdmarc && \
    rm -rf /root/.cache
RUN apt-get purge python3-setuptools python3-pip python3-wheel --autoremove -y && \
    apt-get clean
USER user
ENTRYPOINT [ "checkdmarc" ]