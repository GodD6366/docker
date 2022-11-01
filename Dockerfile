FROM ubuntu:latest

# 前置要求
RUN apt update && apt install -y unzip wget

RUN wget https://dl.nssurge.com/snell/snell-server-v4.0.0-linux-amd64.zip

RUN unzip -d /etc/snell snell-server-v4.0.0-linux-amd64.zip

CMD [ "/etc/snell/snell-server" ]
