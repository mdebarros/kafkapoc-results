#!/bin/bash

#echo "Loading env vars..."
#source env.sh

scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/central-ledger/config/default.json ./${CONFIG_UC}_${CONFIG_RUN}_config-central-ledger.json;
scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/ml-api-adapter/config/default.json ./${CONFIG_UC}_${CONFIG_RUN}_config-ml-api-adapter.json;

