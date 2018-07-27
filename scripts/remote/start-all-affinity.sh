#!/bin/bash

echo "starting central-ledger with affinity..."
sh start-central-ledger-affinity.sh

echo "starting ml-api-adapter..."
sh start-ml-api-adapter.sh
