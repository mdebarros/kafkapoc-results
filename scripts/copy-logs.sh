#!/bin/bash
scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/central-ledger/console-central-ledger.log ./console-central-ledger.log;
scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/ml-api-adapter/console-ml-api-adapter.log ./console-ml-api-adapter.log;

