#!/bin/bash

#echo "Loading env vars..."
#source env.sh

scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/central-ledger/console-central-ledger.log ./${CONFIG_UC}-${CONFIG_RUN}-console-central-ledger.log;
scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/ml-api-adapter/console-ml-api-adapter.log ./${CONFIG_UC}-${CONFIG_RUN}-console-ml-api-adapter.log;

