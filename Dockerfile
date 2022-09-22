##########################################################################################
# Dockerfile for kallisto v0.46.1 Linux (https://pachterlab.github.io/kallisto/download) #
##########################################################################################

FROM ubuntu:18.04
LABEL maintainer="Joao Neto (jlnetosci@gmail.com)"

RUN apt update; apt install -y wget; apt clean; \
cd /usr/bin && wget -q https://github.com/pachterlab/kallisto/releases/download/v0.46.1/kallisto_linux-v0.46.1.tar.gz; \
tar -zxf kallisto_linux-v0.46.1.tar.gz; rm kallisto_linux-v0.46.1.tar.gz; \
apt clean wget && apt -y autoclean && apt -y autoremove