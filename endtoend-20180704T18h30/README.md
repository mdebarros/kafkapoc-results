### 20180704T10h20:

[README](../README.md)

#### Detailed Analysis:
- [Consumer Analysis](../perf0xConsumer-20180704T18h30/README.md)
- [Producer Analysis](../perf0xProducer-20180704T18h30/README.md)

#### End-to-end Metrics:
Ref: [End-to-end Metrics](./combined-end-to-end-20180704T18h30.txt)

Analysis:
- First request: `2018-07-04T17:39:01.396Z`
- Last request: `2018-07-04T17:39:04.716Z`
- Total number of lines in log file: `2000`
- Number of unique matched entries: `1000`
- Total difference of all requests in seconds: `3.32`
- Shortest response time in second: `0.02`
- Longest response time in second: `2.57`
- The average transaction in second: `1.25`
- Average transactions per second: `301.20`

#### Findings:
- Huge performance improvement over [End-to-end-20180704T10h20 Analysis](../endtoend-20180704T10h20/README.md)
- Config changes to the Consumer (in order of impact):
    - `"socket.blocking.max.ms": 1`: This added an additional 1m for socket connection. This mainly impacted the Producer performance, but did improve the Consumer.
    - `"fetch.wait.max.ms": 1`: Reduced the fetch wait time to `1ms`. Note that this may impact CPU on Kafka, and may need to be increased to around `100ms`. 
    - `"fetch.error.backoff.ms": 1`: Similar to the above except we want to ensure that the error backoff is reduced as much as possible. Note the possible impact on Kafka CPU.
    - `"queue.buffering.max.ms": 1`: Ensure that the internal Kafka client buffer is processed within `1ms`.
    - `"batchSize": 10`: I find this batch size to provide the optimum TPS in general. This could be increased to a size of 100 depending on the message size, and the subsequent I/O found in the processing of the callBack function. Thus this should be tweaked depending on the callBack implementation.
    - `"broker.version.fallback": "0.10.1.0"` & `"api.version.request": false`: Reduces the initial Connect time of Kafka during the Handshake. Optional performance increase. Possible issue if updating the Kafka broker and this is manually set. As a result I do not recommend this change.    
- Config changes to the Producer (in order of impact):
    - `"socket.blocking.max.ms": 1`: This added an additional 1m for socket connection. Huge impact the performance of the Producer by magnitudes.
    - `"queue.buffering.max.ms": 1`: Ensure that the internal Kafka client buffer is processed within `1ms`.
    - `"broker.version.fallback": "0.10.1.0"` & `"api.version.request": false`: Reduces the initial Connect time of Kafka during the Handshake. Optional performance increase. Possible issue if updating the Kafka broker and this is manually set. As a result I do not recommend this change.

#### Recommendation:
- Apply changes to the Mojaloop end-to-end Process to determine performance gains.
