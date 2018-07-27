#!/usr/bin/env bash

echo "Copying logs from remote"
echo "---------------------------------------------------------------------"
sh copy-logs.sh

echo "Copying jmeter summary from remote"
echo "---------------------------------------------------------------------"
sh copy-summary-from-remote.sh

echo "Printing all metrics"
echo "---------------------------------------------------------------------"
sh print-all-metrics-affinity.sh
