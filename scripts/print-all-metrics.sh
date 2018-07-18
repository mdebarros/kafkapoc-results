#!/usr/bin/env bash

echo
echo "*********************************************************************"
echo "combining logs..."
grep  -h ".*guid=.*" console-*.log | sort > combined.out;

echo "Printing end-to-end metrics"
echo "---------------------------------------------------------------------"
node ../tools/loadTestingParser.js -n 10 -f combined.out;
echo "---------------------------------------------------------------------"

echo
echo "*********************************************************************"
echo "Printing ml-api-adapter metrics"
echo "---------------------------------------------------------------------"
java -jar ../tools/perf4j-0.9.16.jar console-ml-api-adapter.log -t 900000;
echo "---------------------------------------------------------------------"

echo
echo "*********************************************************************"
echo "Printing central-ledger metrics"
echo "---------------------------------------------------------------------"
java -jar ../tools/perf4j-0.9.16.jar console-central-ledger.log -t 900000
echo "---------------------------------------------------------------------"
