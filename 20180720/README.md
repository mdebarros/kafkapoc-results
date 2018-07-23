## Recommendations & Findings as of PI3.2

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

### Code Enhancements:
- Bug in Producers Singleton Factory that instantiates a new Producer on every sendMessage. The Singleton Factory should only instantiate the Producer if it has already not been done so. (Ref: [Issue #370](https://github.com/mojaloop/project/issues/370))
- Enable new config to enable/disable auto-commits and/or manual-commits. (Ref: [Story #371](https://github.com/mojaloop/project/issues/371))
    
### Kafka Broker Enhancements
- Ensure that the latest version of Kafka is used. There was a notable improvement from a single message by using Kafka v1.1.0 (ref: [UC1](../20180718-perf-test-02/#use-case-1---base-line-single-message-with-auto-commit-enabled)) over v0.1.0 (Ref: [UC6](../20180718-perf-test-02/#use-case-6---base-line-single-message-with-auto-commit-enabled)).
    
### Future avenues of exploration:
- Test impact of Batch Processing on Mojaloop Golden-path Transfer-prepare (Ref: [Story #362](https://github.com/mojaloop/project/issues/362))
- Test impact of multi-threaded processing of messages on non-position consumers on Mojaloop Golden-path Transfer-prepare (Ref: [Story #366](https://github.com/mojaloop/project/issues/366))
- Test impact of increased affinity on non-position consumers on Mojaloop Golden-path Transfer-prepare (Ref: [Story #364](https://github.com/mojaloop/project/issues/364))
- Test impact of Java vs Node (Ref: [Story #369](https://github.com/mojaloop/project/issues/369))
- Test impact of a managed Kafka Broker (remove any possible limitation or bottlenecks from self-hosted deployments)
- Implement native Kafka EOS capabilities once it has been introduced to NodeJs Kafka libraries (Ref: [Story #368](https://github.com/mojaloop/project/issues/368))

### Outcomes:
- Implement Recommendations and Findings in PI3.3 [Story #371 - Kafka Performance Issue Analysis & Investigation - Implement findings and recommendations as of PI3.2](https://github.com/mojaloop/project/issues/371)

## Impact to Metrics
Results taken from perf-test-02 on AWS tests. (Ref: [20180718T17h46 - Perf-test-02](../20180718-perf-test-02-baseline), [20180718T17h46 - Perf-test-02](../20180718-perf-test-02))

### Comparison of Baseline PI2 vs PI3.1 Recommendations and Findings:

__Note that only single message use-cases can be compared against Baseline PI2 as the Producer-fix is necessary for stability during load tests.__

Metric | Use-case | Run | PI2 | PI3.1 | % Diff | Improvement
---- | ---- | ---- | ---- | ---- | ---- | ---- 
Average Transaction Time in Sec	| 1 | 1 | 7.31 | 6.88 | -6% | Yes
Average Transaction Time in Sec | 2 | 2 | 7.25 | 5.97 | -18% | Yes

- Average of `12%` improvement for `Average Transaction time in Sec`

### Comparison of Baseline PI2 vs PI3.2 Recommendations and Findings:

__Note that only single message use-cases can be compared against Baseline PI2 as the Producer-fix is necessary for stability during load tests.__

Metric | Use-case | Run | PI2 | PI3.2 | % Diff | Improvement
---- | ---- | ---- | ---- | ---- | ---- | ---- 
Average Transaction Time in Sec	| 1 | 1 | 7.31 | 3.04 | -58% | Yes
Average Transaction Time in Sec | 2 | 2 | 7.25 | 2.58 | -64% | Yes

- Average of `61%` improvement for `Average Transaction time in Sec`

### Comparison of Baseline PI3.1 vs PI3.2 Recommendations and Findings:

Metric | Use-case | Run | PI1 | PI3.2 | % Diff | Improvement
---- | ---- | ---- | ---- | ---- | ---- | ---- 
Average Transaction Time in Sec	| 1 | 1 | 6.88 | 3.04 | -56% | Yes
Average Transaction Time in Sec	| 1 | 2 | 5.97 | 2.58 | -57% | Yes
Average Transaction Time in Sec | 2 | 1 | 11.02 | 8.21 | -25% | Yes
Average Transaction Time in Sec | 2 | 2 | 11.02 | 11.35 | 3% | Yes
---- | ---- | ---- | ---- | ---- | ---- | ---- 
Transactions Per Second	| 2 | 1 | 4.64 | 6.51 | +40% | Yes
Transactions Per Second	| 2 | 2 | 4.64 | 4.82 | +4% | Yes

- Average of `34%` improvement for `Average Transaction time in Sec`
- Average of `22%` improvement for `Transactions per Second`
