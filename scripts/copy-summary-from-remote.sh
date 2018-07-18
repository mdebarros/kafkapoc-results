#!/bin/bash
scp -i $PERF_JMETER_ID $PERF_JMETER_USER@$PERF_JMETER_IP:/home/awsgui/summary.csv ./summary.csv;
