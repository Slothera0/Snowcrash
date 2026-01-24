FROM debian:trixie

WORKDIR /data

RUN apt-get update \
 && apt-get install -y tshark \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["tshark"]