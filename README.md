# kafkapoc-results

Results based on the following projects: 
- [https://github.com/mdebarros/kafkapoc](https://github.com/mdebarros/kafkapoc)
- [https://github.com/mdebarros/central-services-shared](https://github.com/mdebarros/central-services-shared/tree/feature/perfAnalysis) _(branch *perfAnalysis*)_

## Performance Results Collected
Result store: [https://github.com/mdebarros/kafkapoc-results](https://github.com/mdebarros/kafkapoc-results)

## Selection of Collected results

### 20180704T10h00:
- Sync disabled for Consumers
- [Consumer Analysis](./perf0xConsumer-20180704T10h00/README.md)
- [Producer Analysis](./perf0xProducer-20180704T10h00/README.md)

### 20180704T10h20:
- Sync enabled for Consumers
- [Consumer Analysis](./perf0xConsumer-20180704T10h20/README.md)
- [Producer Analysis](./perf0xProducer-20180704T10h20/README.md)
- [End-to-end Analysis](./endtoend-20180704T10h20/README.md)

### 20180704T18h30:
- Sync enabled for Consumers
- [Consumer Analysis](./perf0xConsumer-20180704T18h30/README.md)
- [Producer Analysis](./perf0xProducer-20180704T18h30/README.md)
- [End-to-end Analysis](./endtoend-20180704T18h30/README.md)

### 20180705T17h40:
- [Mojaloop Transfer Prepare Results](./mojaloop-transfer-20180705T17h40/README.md)

### 20180711T17h00:
- [CommitSync Comparison Tests](./20180711/README.md)

### 20180712:
- [Mojaloop Transfer Prepare Results with single message](./20180712/README.md)

### 20180713:
- [Mojaloop Transfer Prepare Results with Load](./20180713/README.md)

### 20180718:
- [Mojaloop Transfer Prepare Results on AWS](./20180718/README.md)

### Findings:
- [Recommended Kafka Configuration](./endtoend-20180704T18h30/#findings)

## Description of Perf4js Metrics Collected

### Consumer Metrics:

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

| Metric | Component | Description |
| --- | --- | --- |
| metricProducerConnectProcessingTime | Common Streaming Lib - kafka/producer.js | Time for Producer to connect |
| metricProducerSendMessageProcessingTime | Common Streaming Lib - kafka/producer.js | Total processing time for sending a message |
| metricTimeProducerForLoop | KafkaPoc - producers.js | Total processing time for sending batch of messages |
