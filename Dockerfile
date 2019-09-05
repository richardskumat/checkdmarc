#FROM python:3.7-buster
FROM debian:buster-slim
RUN useradd -m -s /bin/bash user
RUN apt-get update && \
    apt-get install python3-minimal python3-setuptools python3-pip python3-wheel -y --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* && \
    apt-get clean
RUN pip3 install checkdmarc && rm -rf /root/.cache
USER user
ENTRYPOINT [ "checkdmarc" ]