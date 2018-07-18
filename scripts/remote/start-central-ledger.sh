#!/bin/bash
export CLEDG_DATABASE_URI=mysql://central_ledger:password@localhost:3306/central_ledger
cd ./central-ledger
nohup node ./src/api/index.js > console-central-ledger.log& 

