FROM python:3.7-buster
RUN useradd -m -s /bin/bash user
RUN pip install checkdmarc && rm -rf /root/.cache
USER user
ENTRYPOINT [ "checkdmarc" ]