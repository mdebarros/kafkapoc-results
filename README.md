# kafkapoc-results

Results based on the following project: [https://github.com/mdebarros/kafkapoc](https://github.com/mdebarros/kafkapoc)

## Performance Results Collected
Result store: [https://github.com/mdebarros/kafkapoc-results](https://github.com/mdebarros/kafkapoc-results)

## Per4js Metrics Collected

### Comsumer Metrics:

| Metric        | Component           | Description  |
| ------------- | ------------- | ----- |
| metricConsumeProcessingTime | Common Streaming Lib - kafka/consumer.js | Total processing time for the main Consume method |
| metricConsumeRecursiveConsumeProcessingTime | Common Streaming Lib - kafka/consumer.js | Processing time for the sub Recursive Consume call-back method |
| metricConsumeRecursiveProcessingTime | Common Streaming Lib - kafka/consumer.js | Total processing time for the sub Recursive Consume method |
| metricConsumeSyncQueueProcessingTime | Common Streaming Lib - kafka/consumer.js | Processing time for SyncQueue call-back function for sync processing |
| metricConsumeSyncQueueResolveProcessingTime | Common Streaming Lib - kafka/consumer.js | Processing time for SyncQueue call-back function for resume |
| metricConsumerConnectProcessingTime | Common Streaming Lib - kafka/consumer.js | Time for Consumer to connect |
| metricEndOfCallBack | KafkaPoc - consumers.js | Processing time for the main `functional` callback function implementation |
| metricOfPerfObsCallBackConsumerFunction | KafkaPoc - consumers.js | Processing time for the main `functional` callback function implementation monitored using `perf_hooks` lib |
| metricTimeDiffFromDropoffToEnd | KafkaPoc - consumers.js | Processing time from `Dropoff` (timestamp from Kafka message placed on write to topic) to the end of the `functional` callback function implementation |
| metricTimeDiffFromMessageSendToDropoff | KafkaPoc - consumers.js | Time difference from `MessageSend` (timestamp inserted into the payload by the producer) to the `Dropoff` timestamp |
| metricTimeDiffFromMessageSendToEnd | KafkaPoc - consumers.js | Processing time from `MessageSend` (timestamp inserted into the payload by the producer) to the end of the `functional` callback function implementation |

### Producer Metrics:

## Selection of Collected results

| Metric | Component | Description |
| --- | --- | --- |
| metricProducerConnectProcessingTime | Common Streaming Lib - kafka/producer.js | Time for Producer to connect |
| metricProducerSendMessageProcessingTim | Common Streaming Lib - kafka/producer.js | Total processing time for sending a message |

### 20180704T10h00:
- Sync disabled
- [Consumer Analysis](./perf0xConsumer-20180704T10h00/README.md)
- [Producer Analysis](./perf0xProducer-20180704T10h00/README.md)

### 20180704T10h20:
- Sync enabled
- [Consumer Analysis](./perf0xConsumer-20180704T10h20/README.md)
- [Producer Analysis](./perf0xProducer-20180704T10h20/README.md)
