#!/usr/bin/env bash

source perfEnv.sh

docker exec -t $KAFKA_ID sh -c "while true; do ./opt/kafka_2.12-1.1.0/bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --group kafka-ml-api-adapter --describe; sleep 5; done"
