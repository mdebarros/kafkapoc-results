### 20180704T18h30:

#### Config:

- [Env Vars](./perfEnv.sh)
- [Config](./config.json)

#### Flamegraph using 0x:
Ref: [flamegraph.html](./flamegraph.html)

Analysis:
- Reduction on the C++ dependencies with most of the time being spent with the main producers.js loop which sends the batch messages.
- 2nd hottest spot being the sendMessage to Kafka

#### Profiler summary: 
Ref: [processed-isolate-0x105801400-v8.txt](./processed-isolate-0x105801400-v8.txt)

Analysis:
- Seeing reduced figures on the C++ dependencies sitting at `73.5%`.
- Larger for unaccounted %. I feel that the Javascript figure would have improved here if it was not for this.

#### Perf4js timing results: 
Ref: [producers_js-20180704T10h30.txt](./producers_js-20180704T10h30.txt)

Analysis:
- Seeing similar figures here surprisingly. This indicates that the sendMessage is not waiting for the delivery acknowledgement as we are seeing reduced processing time for this area.

#### Findings:
- Overall, the Producer performance has drastically improved showing less locks within the C++ dependencies.

#### Recommendation:
- Investigate possible issue with the sendMessage function within the Common-streaming lib to ensure that the sendMessage only returns a promise once the delivery acknowledgements have been received.
