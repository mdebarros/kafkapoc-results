#!/usr/bin/env bash

cd ./central-ledger

echo "Starting Prepare Handler for '$FSP1'..."
nohup node ./src/handlers/index.js handler --prepare "$FSP1" > console-central-ledger-prepare-${FSP1}.log&

echo "Starting Prepare Handler for '$FSP2'..."
nohup node ./src/handlers/index.js handler --prepare "$FSP2" > console-central-ledger-prepare-${FSP2}.log&

echo "Starting Position Handler for '$FSP1'..."
nohup node ./src/handlers/index.js handler --position "$FSP1" > console-central-ledger-position-${FSP1}.log&

echo "Starting Position Handler for '$FSP2'..."
nohup node ./src/handlers/index.js handler --position "$FSP2" > console-central-ledger-position-${FSP2}.log&

echo "Starting Transfer Handler..."
nohup node ./src/handlers/index.js handler --transfer > console-central-ledger-transfer.log&

echo "Starting Fulfil Handler..."
nohup node ./src/handlers/index.js handler --fulfil > console-central-ledger-fulfil.log&
