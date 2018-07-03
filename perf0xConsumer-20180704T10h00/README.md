### 20180704T10h20:

[README](../README.md)

#### Config:

- Sync Disabled
- [Env Vars](./perfEnv.sh)
- [Config](./config.json)

#### Flamegraph using 0x:
Ref: [flamegraph.html](./flamegraph.html)

Analysis:
- The hottest node being `node-rdkafka` in the graph unsurprisingly.
- Selecting "Merge" and "cpp" tags: This changes, and we see most of the time being spent with the C++ dependencies.

#### Profiler summary: 
Ref: [processed-isolate-0x104801800-v8.txt](./processed-isolate-0x104801800-v8.txt)

Analysis:
- Most of the processing time is spent within the C++ codebase (interface-hooks into C++ dependencies - `74.1%` of processing time is being spent in C++ vs `16.8%` in Javascript).

#### Perf4js timing results: 
Ref:  [perfPrintConsumerResults-20180704T10h00-normal.txt](./perfPrintConsumerResults-20180704T10h00-normal.txt)

Analysis:
- Very little time is spent in the Consumer callback with most of the metrics showing less then `< 1ms`.
- However, we still see a substantial time `> 1s` being spent from the `metricTimeDiffFromDropoffToEnd` and `metricTimeDiffFromMessageSendToEnd` metrics.
- These above two metrics point to the processing time being spend within the underlying dependencies.

#### Findings:
- All Performance analyses point towards a bottleneck within the C++ dependencies

#### Recommendation:
- Tweak Consumer by testing different configurations for the Common Streaming Library and librdkafka to determine if there can be any performance gains had.
