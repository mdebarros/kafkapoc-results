#!/bin/bash

#echo "Loading env vars..."
#source env.sh

scp -i $PERF_ENV_01_ID ./config-central-ledger.json $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/central-ledger/config/default.json;
scp -i $PERF_ENV_01_ID ./config-ml-api-adapter.json $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/ml-api-adapter/config/default.json;
