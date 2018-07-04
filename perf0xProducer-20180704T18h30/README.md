### 20180704T18h30:

#### Config:

- [Env Vars](./perfEnv.sh)
- [Config](./config.json)

#### Flamegraph using 0x:
Ref: [flamegraph.html](./flamegraph.html)

Analysis:
- The hottest node being `kafkaPoc/producers.js` in the graph. This is most likely due to the for-loop require to send the batch of messages as specific on the perfEnv.sh script.
- Selecting "Merge" and "cpp" tags: This changes, and we see allot of the time being spent with the C++ dependencies.

#### Profiler summary: 
Ref: [processed-isolate-0x105000000-v8.txt](./processed-isolate-0x105000000-v8.txt)

Analysis:
- Most of the processing time is spent within the C++ codebase (interface-hooks into C++ dependencies - `76.8%` of processing time is being spent in C++ vs `15.3%` in Javascript).

#### Perf4js timing results: 
Ref: [perfPrintProducerResults-20180704T10h20-normal-isolate-0x105000000-v8.txt](./perfPrintProducerResults-20180704T10h20-normal-isolate-0x105000000-v8.txt)

Analysis:
- Initial connect to the Kafka broker being the longest processing time under the `metricProducerConnectProcessingTime` metric which is normally under `< 100ms`.
- The actual sendMessage function from within the Central Services Common Streaming Lib shows now signs of performance issues on the Javascript layer with processing times less then `< 1ms`

#### Findings:
- Minimal performance issues are seen on the Javascript layer, with indications showing possible issues within the C++ dependencies.

#### Recommendation:
- Tweak Consumer by testing different configurations for the Common Streaming Library and librdkafka to determine if there can be any performance gains had.
