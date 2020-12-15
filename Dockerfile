FROM ubuntu:bionic

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install python-pip git python-tk -y && rm -rfv /var/lib/apt/lists/*

RUN pip install git+https://github.com/google/spatial-media.git

WORKDIR /working

COPY run.sh /usr/local/sbin/.

ENTRYPOINT ["/usr/local/sbin/run.sh"]
