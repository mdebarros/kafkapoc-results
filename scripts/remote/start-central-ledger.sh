#!/bin/bash
cd ./central-ledger

nohup node ./src/api/index.js > console-central-ledger.log& 
