### 20180704T18h30:

[README](../README.md)

#### Config:

- Sync Enabled for Consumers
- [Env Vars](./perfEnv.sh)
- [Config](./config.json)

#### Flamegraph using 0x:
Ref: [flamegraph.html](./flamegraph.html)

Analysis:
- The hottest node being `async` lib in the graph which is due to the locking required for the sync processing of messages.
- Selecting "Merge" and "cpp" tags: This changes, and we see most of the time being spent with the C++ dependencies.

#### Profiler summary: 
Ref: [processed-isolate-0x105001800-v8.txt](./processed-isolate-0x105001800-v8.txt)

Analysis:
- Most of the processing time is spent within the C++ codebase (interface-hooks into C++ dependencies - `73.9%` of processing time is being spent in C++ vs `17.1%` in Javascript).
- We see more time being spent in Javascript due to the `async` library required for the sync processing when compared to the previous test ( [perf0xConsumer-20180704T10h00](../perf0xConsumer-20180704T10h00/README.md) ).

#### Perf4js timing results: 
Ref: [perfPrintConsumerResults-20180704T10h20-normal-isolate-0x105001800-v8.txt](./perfPrintConsumerResults-20180704T10h20-normal-isolate-0x105001800-v8.txt)

Analysis:
- Very little time is spent in the Consumer callback with most of the metrics showing less then `< 1ms`.
- However, we still see a substantial time `> 1s` being spent from the `metricTimeDiffFromDropoffToEnd` and `metricTimeDiffFromMessageSendToEnd` metrics.
- These above two metrics point to the processing time being spend within the underlying dependencies.

#### Findings:
- Minimal performance issues are seen on the Javascript layer, with indications showing possible issues within the C++ dependencies.

#### Recommendation:
- Tweak Consumer by testing different configurations for the Common Streaming Library and librdkafka to determine if there can be any performance gains had.
