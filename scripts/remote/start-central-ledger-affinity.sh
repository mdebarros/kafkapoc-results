#!/usr/bin/env bash

cd ./central-ledger

echo "Starting Prepare Handler for '$FSP_LIST'..."
nohup node ./src/handlers/index.js handler --prepare "$FSP_LIST" > console-central-ledger-prepare.log&

echo "Starting Position Handler for '$FSP_LIST'..."
nohup node ./src/handlers/index.js handler --position "$FSP_LIST" > console-central-ledger-position.log&

echo "Starting Transfer Handler..."
nohup node ./src/handlers/index.js handler --transfer > console-central-ledger-transfer.log&

echo "Starting Fulfil Handler..."
nohup node ./src/handlers/index.js handler --fulfil > console-central-ledger-fulfil.log&
