# 20180718T17h46

## Use Case 1 - Base-line single message

### Testing Parameters:
- 1 Transfer-Prepare Messages
- Batch Size: 1
- JMeter Threads: 1
- Commit Sync Enabled: false
- Auto-commit enabled: true
- Auto-commit interval: 200

### 1st run

#### end-to-end
```bash
First request: 2018-07-17T15:41:26.486Z
Last request: 2018-07-17T15:41:29.692Z
Total number of lines in log file: 10
Number of unique matched entries: 1
Total difference of all requests in seconds: 3.206
Shortest response time in second: 3.206
Longest response time in second: 3.206
The average transaction in second: 3.206
Average transactions per second: 0.3119151590767311
```

#### ml-api-adapter
```bash
Performance Statistics   2018-07-17 17:30:00 - 2018-07-17 17:45:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              2.0           2           2         0.0           1
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2          44
metricConsumeSyncQueueProcessingTime                    13.0          13          13         0.0           1
metricConsumeSyncQueueResolveProcessingTime              1.0           1           1         0.0           1
metricConsumerConnectProcessingTime                    205.0         205         205         0.0           1
metricMlAPIConsumeMessage                              142.0         142         142         0.0           1
metricMlAPIConsumeMessageForEachMsg                    141.0         141         141         0.0           1
metricMlAPIProcessMessage                              139.0         139         139         0.0           1
metricMlAPIRoutePrepare                                127.0         127         127         0.0           1
metricMlAPIStartConsume                                211.0         211         211         0.0           1
metricProducerConnectProcessingTime                    116.0         116         116         0.0           1
metricProducerSendMessageProcessingTime                  1.0           1           1         0.0           1
```

#### central-ledger
```bash
Performance Statistics   2018-07-17 17:30:00 - 2018-07-17 17:45:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     600.0         600         600         0.0           1
metricCenLedgerCreateHandler                           531.4         104        1206       446.5           7
metricCenLedgerCreatePositionHandlers                  208.5         205         212         3.5           2
metricCenLedgerCreatePrepareHandler                    206.0         104         310        84.1           3
metricCenLedgerCreateRejectHandler                    1192.0        1192        1192         0.0           1
metricCenLedgerCreateTransferHandler                  1206.0        1206        1206         0.0           1
metricCenLedgerPositions                                52.0          52          52         0.0           1
metricCenLedgerProduceMessage                          532.0           1        1593       750.2           3
metricCenLedgerRegisterAllHandlers                    3776.0        3776        3776         0.0           1
metricCenLedgerRegisterAllPositionHandlers             421.0         421         421         0.0           1
metricCenLedgerRegisterAllTransferHandlers            3309.0        3309        3309         0.0           1
metricCenLedgerRegisterPositionHandlers                421.0         421         421         0.0           1
metricCenLedgerTransferPrepare                        1752.0        1752        1752         0.0           1
metricCenLedgerTransferTransfer                          2.0           2           2         0.0           1
metricConsumeProcessingTime                              0.4           0           1         0.5           7
metricConsumeRecursiveConsumeProcessingTime              0.7           0           1         0.5           3
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.1         192
metricConsumeSyncQueueProcessingTime                     3.0           3           3         0.0           3
metricConsumeSyncQueueResolveProcessingTime              1.0           0           2         0.8           3
metricConsumerConnectProcessingTime                    529.7         103        1204       446.7           7
metricProducerConnectProcessingTime                   1589.0        1589        1589         0.0           1
metricProducerSendMessageProcessingTime                  0.7           0           1         0.5           3
```


### 2nd run

#### end-to-end
```bash
First request: 2018-07-17T15:48:17.989Z
Last request: 2018-07-17T15:48:19.379Z
Total number of lines in log file: 10
Number of unique matched entries: 1
Total difference of all requests in seconds: 1.39
Shortest response time in second: 1.39
Longest response time in second: 1.39
The average transaction in second: 1.39
Average transactions per second: 0.7194244604316548
```

#### ml-api-adapter
```bash
Performance Statistics   2018-07-17 17:45:00 - 2018-07-17 18:00:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              2.0           2           2         0.0           1
metricConsumeRecursiveConsumeProcessingTime              0.0           0           0         0.0           1
metricConsumeRecursiveProcessingTime                     0.1           0           1         0.2          30
metricConsumeSyncQueueProcessingTime                    10.0          10          10         0.0           1
metricConsumeSyncQueueResolveProcessingTime              4.0           4           4         0.0           1
metricConsumerConnectProcessingTime                    206.0         206         206         0.0           1
metricMlAPIConsumeMessage                               69.0          69          69         0.0           1
metricMlAPIConsumeMessageForEachMsg                     68.0          68          68         0.0           1
metricMlAPIProcessMessage                               66.0          66          66         0.0           1
metricMlAPIRoutePrepare                                217.0         217         217         0.0           1
metricMlAPIStartConsume                                213.0         213         213         0.0           1
metricProducerConnectProcessingTime                    209.0         209         209         0.0           1
metricProducerSendMessageProcessingTime                  1.0           1           1         0.0           1
```

#### central-ledger
```bash
Performance Statistics   2018-07-17 17:45:00 - 2018-07-17 18:00:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     696.0         696         696         0.0           1
metricCenLedgerCreateHandler                           534.4         104        1320       470.4           7
metricCenLedgerCreatePositionHandlers                  209.0         205         213         4.0           2
metricCenLedgerCreatePrepareHandler                    139.3         104         210        50.0           3
metricCenLedgerCreateRejectHandler                    1321.0        1321        1321         0.0           1
metricCenLedgerCreateTransferHandler                  1102.0        1102        1102         0.0           1
metricCenLedgerPositions                                42.0          42          42         0.0           1
metricCenLedgerProduceMessage                          302.3           1         904       425.4           3
metricCenLedgerRegisterAllHandlers                    3800.0        3800        3800         0.0           1
metricCenLedgerRegisterAllPositionHandlers             422.0         422         422         0.0           1
metricCenLedgerRegisterAllTransferHandlers            3333.0        3333        3333         0.0           1
metricCenLedgerRegisterPositionHandlers                422.0         422         422         0.0           1
metricCenLedgerTransferPrepare                        1013.0        1013        1013         0.0           1
metricCenLedgerTransferTransfer                          3.0           3           3         0.0           1
metricConsumeProcessingTime                              0.4           0           1         0.5           7
metricConsumeRecursiveConsumeProcessingTime              0.3           0           1         0.5           3
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2         128
metricConsumeSyncQueueProcessingTime                     2.3           1           4         1.2           3
metricConsumeSyncQueueResolveProcessingTime              0.3           0           1         0.5           3
metricConsumerConnectProcessingTime                    532.6         103        1318       470.6           7
metricProducerConnectProcessingTime                    897.0         897         897         0.0           1
metricProducerSendMessageProcessingTime                  0.3           0           1         0.5           3
```

