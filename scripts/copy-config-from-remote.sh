#!/bin/bash

#echo "Loading env vars..."
#source env.sh

scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/central-ledger/config/default.json ./${CONFIG_UC}-${CONFIG_RUN}-config-central-ledger.json;
scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/ml-api-adapter/config/default.json ./${CONFIG_UC}-${CONFIG_RUN}-config-ml-api-adapter.json;

scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/*.sh ./