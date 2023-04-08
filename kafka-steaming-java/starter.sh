#!/bin/sh

./kafka_env/kafka_2.13-3.4.0/bin/zookeeper-server-start.sh /kafka_env/kafka_2.13-3.4.0/config/zookeeper.properties 1>/dev/null 2>/dev/null & 
./kafka_env/kafka_2.13-3.4.0/bin/kafka-server-start.sh /kafka_env/kafka_2.13-3.4.0/config/server.properties 1>/dev/null 2>/dev/null
