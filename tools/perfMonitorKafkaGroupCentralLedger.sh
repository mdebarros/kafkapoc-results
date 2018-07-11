#!/usr/bin/env bash

source perfEnv.sh

docker exec -t $KAFKA_ID sh -c "while true; do ./opt/kafka_2.11-0.10.1.0/bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --group central-ledger-kafka --describe; sleep 5; done"
