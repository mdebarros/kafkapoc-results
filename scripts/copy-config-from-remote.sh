#!/bin/bash
scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/central-ledger/config/default.json ./config-central-ledger.json;
scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/ml-api-adapter/config/default.json ./config-ml-api-adapter.json;

