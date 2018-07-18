#!/bin/bash

#echo "Loading env vars..."
#source env.sh

scp -i $PERF_JMETER_ID $PERF_JMETER_USER@$PERF_JMETER_IP:/home/awsgui/summary.csv ./${CONFIG_UC}-${CONFIG_RUN}-summary.csv;
