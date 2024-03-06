FROM python:3.9.11-slim-buster

RUN apt-get update && apt-get -yq install \
    gettext \
    jq \
    build-essential \
    python3-aodhclient \
    python3-barbicanclient \
    python3-ceilometerclient \
    python3-cinderclient \
    python3-cloudkittyclient \
    python3-designateclient \
    python3-gnocchiclient \
    python3-octaviaclient \
    python3-osc-placement \
    python3-openstackclient \
    python3-pankoclient \
    python3-swiftclient \
    python3-keystoneclient \
    python3-ironicclient \
    zip \
  && rm -rf /var/lib/apt/lists/*

RUN pip install python-swiftclient python-keystoneclient

CMD /bin/bash
