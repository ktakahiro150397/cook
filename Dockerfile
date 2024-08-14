FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y wget unzip curl

WORKDIR /workspace

# Download binary
RUN wget https://github.com/cooklang/cookcli/releases/download/v0.8.0/cook-x86_64-unknown-linux-musl.tar.gz
# Extract
RUN tar -zxvf cook-x86_64-unknown-linux-musl.tar.gz -C /usr/local/bin

EXPOSE 9080
