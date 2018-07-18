#!/usr/bin/env bash

#echo "Loading env vars..."
#source env.sh

echo
echo "*********************************************************************"
echo "combining logs..."
grep  -h ".*guid=.*" ${CONFIG_UC}-${CONFIG_RUN}-console-*.log | sort > ${CONFIG_UC}-${CONFIG_RUN}-combined.out;

echo "Printing end-to-end metrics"
echo "---------------------------------------------------------------------"
node ../tools/loadTestingParser.js -n 10 -f ${CONFIG_UC}-${CONFIG_RUN}-combined.out;
echo "---------------------------------------------------------------------"

echo
echo "*********************************************************************"
echo "Printing ml-api-adapter metrics"
echo "---------------------------------------------------------------------"
java -jar ../tools/perf4j-0.9.16.jar ${CONFIG_UC}-${CONFIG_RUN}-console-ml-api-adapter.log -t 900000;
echo "---------------------------------------------------------------------"

echo
echo "*********************************************************************"
echo "Printing central-ledger metrics"
echo "---------------------------------------------------------------------"
java -jar ../tools/perf4j-0.9.16.jar ${CONFIG_UC}-${CONFIG_RUN}-console-central-ledger.log -t 900000
echo "---------------------------------------------------------------------"
