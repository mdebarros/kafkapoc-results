## Recommendations & Findings as of PI3.3

### Kafka Client Lib 
(Ref: [Recommended Kafka Configuration](../endtoend-20180704T18h30/#findings))
- Config changes to the Consumer (in order of impact):
    - `"socket.blocking.max.ms": 1`: This added an additional 1m for socket connection. This mainly impacted the Producer performance, but did improve the Consumer.
    - `"fetch.wait.max.ms": 1`: Reduced the fetch wait time to `1ms`. Note that this may impact CPU on Kafka, and may need to be increased to around `100ms`. 
    - `"fetch.error.backoff.ms": 1`: Similar to the above except we want to ensure that the error backoff is reduced as much as possible. Note the possible impact on Kafka CPU.
    - `"queue.buffering.max.ms": 1`: Ensure that the internal Kafka client buffer is processed within `1ms`.
    - `"batchSize": 10`: I find this batch size to provide the optimum TPS in general. This could be increased to a size of 100 depending on the message size, and the subsequent I/O found in the processing of the callBack function. Thus this should be tweaked depending on the callBack implementation. ~ Only applicable if batch processing is required.    
- Config changes to the Producer (in order of impact):
    - `"socket.blocking.max.ms": 1`: This added an additional 1m for socket connection. Huge impact the performance of the Producer by magnitudes.
    - `"queue.buffering.max.ms": 1`: Ensure that the internal Kafka client buffer is processed within `1ms`.
- Commits
    - Enable auto-commit with an auto-commit-interval between 100-200ms. ~Note: that we would have to implement additional compensation logic to ensure that replays/duplicates are handled correctly. Currently the commits are done manually for EVERY message. (Ref: [Mojaloop Transfer Prepare Results with single message](../20180712/README.md), [Mojaloop Transfer Prepare Results with Load](../20180713/README.md), [Mojaloop Transfer Prepare Results on AWS perf-test-02](../20180718-perf-test-02/##summary-of-findings))
- New configs as of PI3.3:
    - `"socket.keepalive.enable": true`: Ensure that client keeps alive 
    - `"socket.max.fails": 0`: Disable disconnects on connectivity issues

### Code Enhancements:
- ~~Bug in Producers Singleton Factory that instantiates a new Producer on every sendMessage. The Singleton Factory should only instantiate the Producer if it has already not been done so.~~ (Ref: [Issue #370](https://github.com/mojaloop/project/issues/370))
- Enable new config to enable/disable auto-commits and/or manual-commits. (Ref: [Story #371](https://github.com/mojaloop/project/issues/371))
    
### Kafka Broker Enhancements
- Ensure that the latest version of Kafka is used. There was a notable improvement from a single message by using Kafka v1.1.0 (ref: [UC1](../20180718-perf-test-02/#use-case-1---base-line-single-message-with-auto-commit-enabled)) over v0.1.0 (Ref: [UC6](../20180718-perf-test-02/#use-case-6---base-line-single-message-with-auto-commit-enabled)).
    
### Future avenues of exploration:
Existing:
- Test impact of Batch Processing on Mojaloop Golden-path Transfer-prepare (Ref: [Story #362](https://github.com/mojaloop/project/issues/362))
- Test impact of multi-threaded processing of messages on non-position consumers on Mojaloop Golden-path Transfer-prepare (Ref: [Story #366](https://github.com/mojaloop/project/issues/366))
- ~~Test impact of increased affinity on non-position consumers on Mojaloop Golden-path Transfer-prepare~~ (Ref: [Story #364](https://github.com/mojaloop/project/issues/364))
- Test impact of Java vs Node (Ref: [Story #369](https://github.com/mojaloop/project/issues/369))
- Test impact of a managed Kafka Broker (remove any possible limitation or bottlenecks from self-hosted deployments)
- Implement native Kafka EOS capabilities once it has been introduced to NodeJs Kafka libraries (Ref: [Story #368](https://github.com/mojaloop/project/issues/368))
New:
- May need to re-test the different values for the recommended config for high Affinity 

### Outcomes:
- Implement Recommendations and Findings in PI3.3 [Story #371 - Kafka Performance Issue Analysis & Investigation - Implement findings and recommendations as of PI3.2](https://github.com/mojaloop/project/issues/371). Note the auto-commit changes will be moved to a future story.

## Impact to Metrics
Results taken from perf-test-02 on AWS tests. (Ref: [20180727](../20180727), [20180718T17h46 - Perf-test-02](../20180718-perf-test-02))

### Comparison of minimal Affinity of PI3.1 vs high Affinity PI3.3 for single messages:

Metric | PI3.2 UC | PI3.3 UC | Run | PI3.2 Value | PI3.3 Value | % Diff | Improvement
---- | ---- | ---- | ---- | ---- | ----	| ---- | ----
Average Transaction Time in Sec	| 2 | 7 | 1 |3.037 | 1.982 | -35% | Yes
Average Transaction Time in Sec	| 2 | 7 | 2 |2.583 | 2.075 | -20% | Yes
Transactions Per Second| 2 | 7 | 1 | 0.329272308 | 0.504540868 | 53% | Yes
Transactions Per Second| 2 | 7 | 2 | 0.387146729 | 0.481927711 | 24% | Yes

- Average of `27%` improvement for `Average Transaction time in Sec`
- Average of `39%` improvement for `Transactions Per Second`

### Comparison of minimal Affinity of PI3.1 vs high Affinity PI3.3 for 100 messages:

Metric | PI3.2 UC | PI3.3 UC | Run | PI3.2 Value | PI3.3 Value | % Diff | Improvement
---- | ---- | ---- | ---- | ---- | ----	| ---- | ----
Average Transaction Time in Sec	| 2 | 7 | 1 | 8.21128 | 1.64922 | -80% | Yes
Average Transaction Time in Sec	| 2 | 7 | 2 | 7.92211 | 3.17243 | -60% | Yes
Transactions Per Second| 2 | 7 | 1 | 6.506180872 | 22.17786649 | 241% | Yes
Transactions Per Second| 2 | 7 | 2 | 6.804572673 | 15.22533496 | 124% | Yes

- Average of `70%` improvement for `Average Transaction time in Sec`
- Average of `182%` improvement for `Transactions Per Second`
