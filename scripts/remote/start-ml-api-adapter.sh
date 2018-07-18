#!/bin/bash
export LOG_LEVEL=debug
cd ml-api-adapter
nohup node ./src/api/index.js > console-ml-api-adapter.log &
