#!/bin/bash

#echo "Loading env vars..."
#source env.sh

scp -i $PERF_ENV_01_ID ./${CONFIG_UC}-config-central-ledger.json $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/central-ledger/config/default.json;
scp -i $PERF_ENV_01_ID ./${CONFIG_UC}-config-ml-api-adapter.json $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/ml-api-adapter/config/default.json;
