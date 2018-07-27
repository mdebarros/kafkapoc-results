#!/bin/bash

#echo "Loading env vars..."
#source env.sh

echo
echo "*********************************************************************"
echo "Copying Central-Ledger logs..."
echo "---------------------------------------------------------------------"
scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/central-ledger/console-central-ledger-prepare-${FSP1}.log ./${CONFIG_UC}-${CONFIG_RUN}-console-central-ledger-prepare-${FSP1}.log;
scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/central-ledger/console-central-ledger-prepare-${FSP2}.log ./${CONFIG_UC}-${CONFIG_RUN}-console-central-ledger-prepare-${FSP2}.log;
scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/central-ledger/console-central-ledger-position-${FSP1}.log ./${CONFIG_UC}-${CONFIG_RUN}-console-central-ledger-position-${FSP1}.log;
scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/central-ledger/console-central-ledger-position-${FSP2}.log ./${CONFIG_UC}-${CONFIG_RUN}-console-central-ledger-position-${FSP2}.log;
scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/central-ledger/console-central-ledger-transfer.log ./${CONFIG_UC}-${CONFIG_RUN}-console-central-ledger-transfer.log;
scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/central-ledger/console-central-ledger-fulfil.log ./${CONFIG_UC}-${CONFIG_RUN}-console-central-ledger-fulfil.log;

echo
echo "*********************************************************************"
echo "Copying Ml-API-Adapter logs..."
echo "---------------------------------------------------------------------"
scp -i $PERF_ENV_01_ID $PERF_ENV_01_USER@$PERF_ENV_01_IP:~/ml-api-adapter/console-ml-api-adapter.log ./${CONFIG_UC}-${CONFIG_RUN}-console-ml-api-adapter.log;
