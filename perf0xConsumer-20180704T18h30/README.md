### 20180704T18h30:

#### Config:

- Sync Enabled for Consumers
- [Env Vars](./perfEnv.sh)
- [Config](./config.json)

#### Flamegraph using 0x:
Ref: [flamegraph.html](./flamegraph.html)

Analysis:
- Highest hot spot is now the commitMessageSync - committing the current index to the Kafka broker. This could be improved by either: 1. storing the current index locally; 2. committing the index only after a batch. Either choice you have a risk of re-playing messages which will need to be taken into account by the implementation.
- Selecting "Merge" & "cpp" filters still show C++ being the hottest spots.  

#### Profiler summary: 
Ref: [processed-isolate-0x105000400-v8.txt](./processed-isolate-0x105000400-v8.txt)

Analysis:
- There does seem to be an improvement on the reduciton of the C++ dependencies as seen by the `34.1%` figure. However, note the large unaccounted for portion sitting at `58.3%` which has a mix of javascript & C++. It will thus be hard to see how this area has improved as a result, but the overall feeling is a def reduction on the C++ dependencies.

#### Perf4js timing results: 
Ref: [consumers_js-20180704T10h30.txt](./consumers_js-20180704T10h30.txt)

Analysis:
- The biggest improvements here being the `metricTimeDiffFromDropoffToEnd` & `metricTimeDiffFromMessageSendToEnd`. Pay close attention to the `min` figure being `18` & `21` compared to the previous tests ([Consumer Analysis for 20180704T10h20](../perf0xConsumer-20180704T10h20/#perf4js-timing-results)) being `1015`. Also note the standard deviations being around `709` instead of `239`.

#### Findings:
- Huge improvement on the speed of the initial processing of messages, and a reduction on the C++ dependencies.

#### Recommendation:
- Consider the 2nd approach suggest above when dealing with the commitMessageSync. This will ensure that we are reducing the time taken to commit the index within a batch process instead of doing so for every message within a batch. This as per above will require consideration within the implementation to ensure that there are no message replays.
