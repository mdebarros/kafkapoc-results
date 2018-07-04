### 20180704T10h20:

#### Detailed Analysis:
- [Consumer Analysis](../perf0xConsumer-20180704T10h20/README.md)
- [Producer Analysis](../perf0xProducer-20180704T10h20/README.md)

#### Notes
- Same config used as previous analysis
- Configuration changes from Details Analysis tests:
    - `config.json` - `$.consumers[0].options.batchize = 10` _(previously `1`)_
    - `perfEnv.sh` - `$.MESSAGES_BATCH_SIZE = 1000` _(previously `500`)_

#### End-to-end Metrics:
Ref: [End-to-end Metrics](./combined-end-to-end-20180704T10h30.txt)

Analysis:
- First request: `2018-07-04T17:29:45.361Z`
- Last request: `2018-07-04T17:31:13.145Z`
- Total number of lines in log file: `2000`
- Number of unique matched entries: `1000`
- Total difference of all requests in seconds: `87.78s` (`1.46m`)
- Shortest response time in second: `1.03`
- Longest response time in second: `87.30`
- The average transaction in second: `37.48`
- Average transactions per second: `11.39`

#### Findings:
- Slow end-to-end processing time
- Longest response time being nearly as long as the entire process. 

#### Recommendation:
- Tweak Consumer by testing different configurations for the Common Streaming Library and librdkafka to determine if there can be any performance gains had.
