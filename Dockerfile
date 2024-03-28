FROM ubuntu:22.04
 
# Actualización instalación de paquetes necesarios (wget, gradle y java)
RUN apt-get update && \
    apt-get install -y \
    openjdk-11-jdk \
    gradle \
    wget \
    gnupg2 \
    unzip \
    && rm -rf /var/lib/apt/lists/*
 
# Instalación del navegador Google Chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list && \
    apt-get update && \
    apt-get install -y google-chrome-stable
