FROM ubuntu:18.04

RUN apt update && \
    apt install -y python3-pip && \
    pip3 install ansible && \
    apt clean

CMD ["ansible", "--version"]

WORKDIR /ansible/
