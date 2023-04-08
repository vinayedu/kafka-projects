FROM ubuntu:20.04
ARG TARGETPLATFORM=linux/amd64,linux/arm64
ARG DEBIAN_FRONTEND=noninteractive

ADD https://dlcdn.apache.org/kafka/3.4.0/kafka_2.13-3.4.0.tgz ./kafka_env/kafka_2.13-3.4.0.tgz
Add ./starter.sh ./kafka_env/starter.sh

RUN apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    cd /kafka_env && \
    tar -xvzf kafka_2.13-3.4.0.tgz && \
    rm -f kafka_2.13-3.4.0.tgz && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    chmod +rx ./starter.sh
EXPOSE 2181 

ENTRYPOINT ./kafka_env/starter.sh





