# This dockerfile is meant to spin up a pruned monero Node on your machine
FROM ubuntu:lunar
RUN apt update && apt install -y wget -y bzip2 && wget https://downloads.getmonero.org/linux64
RUN mkdir monero && tar -xjvf linux64 -C monero
RUN cd monero/monero-x86_64-linux-gnu-v0.18.2.0/
CMD monero/monero-x86_64-linux-gnu-v0.18.2.0/monerod --prune-blockchain --non-interactive
