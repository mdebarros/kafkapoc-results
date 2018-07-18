# 20180718T17h46

## Use Case 1 - Base-line single message with Auto-commit enabled

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

## Use Case 2 - Base-line 100 messages with Auto-commit enabled + manual commits disabled

### Testing Parameters:
- 1 Transfer-Prepare Messages
- Batch Size: 1
- JMeter Threads: 10
- 100 Transfer-Prepare Messages (10 per thread)
- Commit Sync Enabled: false
- Auto-commit enabled: true
- Auto-commit interval: 200

### 1st run

#### end-to-end
```bash
node ../tools/loadTestingParser.js -n 10 -f combined.out            
First request: 2018-07-18T09:11:02.469Z
Last request: 2018-07-18T09:11:30.392Z
Total number of lines in log file: 1010
Number of unique matched entries: 101
Total difference of all requests in seconds: 27.923
Shortest response time in second: 0.565
Longest response time in second: 15.386
The average transaction in second: 8.30979207920792
Average transactions per second: 3.617089854242023
```

#### ml-api-adapter
```bash
Performance Statistics   2018-07-18 11:00:00 - 2018-07-18 11:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              0.4           0           6         0.7         101
metricConsumeRecursiveProcessingTime                     0.1           0           6         0.6         143
metricConsumeSyncQueueProcessingTime                     1.9           0          24         3.7         101
metricConsumeSyncQueueResolveProcessingTime              0.4           0           6         1.0         101
metricConsumerConnectProcessingTime                    236.0         236         236         0.0           1
metricMlAPIConsumeMessage                               21.2           8         128        20.3         101
metricMlAPIConsumeMessageForEachMsg                     20.6           7         117        19.5         101
metricMlAPIProcessMessage                               19.8           7         108        18.7         101
metricMlAPIRoutePrepare                                  4.5           0         135        13.4         101
metricMlAPIStartConsume                                276.0         276         276         0.0           1
metricProducerConnectProcessingTime                    113.0         113         113         0.0           1
metricProducerSendMessageProcessingTime                  0.7           0           4         0.9         101
```

#### central-ledger
```bash
Performance Statistics   2018-07-18 11:00:00 - 2018-07-18 11:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     595.0         595         595         0.0           1
metricCenLedgerCreateHandler                           530.6         102        1220       447.8           7
metricCenLedgerCreatePositionHandlers                  207.5         204         211         3.5           2
metricCenLedgerCreatePrepareHandler                    204.7         103         308        83.7           3
metricCenLedgerCreateRejectHandler                    1220.0        1220        1220         0.0           1
metricCenLedgerCreateTransferHandler                  1181.0        1181        1181         0.0           1
metricCenLedgerPositions                                13.0           6          72         9.2         101
metricCenLedgerProduceMessage                            5.6           0        1086        62.2         303
metricCenLedgerRegisterAllHandlers                    3770.0        3770        3770         0.0           1
metricCenLedgerRegisterAllPositionHandlers             418.0         418         418         0.0           1
metricCenLedgerRegisterAllTransferHandlers            3308.0        3308        3308         0.0           1
metricCenLedgerRegisterPositionHandlers                418.0         418         418         0.0           1
metricCenLedgerTransferPrepare                          80.0          30        1223       116.8         101
metricCenLedgerTransferTransfer                          4.8           0          31         5.3         101
metricConsumeProcessingTime                              0.1           0           1         0.3           7
metricConsumeRecursiveConsumeProcessingTime              0.2           0           5         0.5         303
metricConsumeRecursiveProcessingTime                     0.0           0           3         0.2         564
metricConsumeSyncQueueProcessingTime                     1.5           0          23         2.6         303
metricConsumeSyncQueueResolveProcessingTime              0.6           0          13         1.5         303
metricConsumerConnectProcessingTime                    529.3         102        1219       447.6           7
metricProducerConnectProcessingTime                   1084.0        1084        1084         0.0           1
metricProducerSendMessageProcessingTime                  0.8           0          24         2.2         303
```

#### JMeter
Label | # Samples | Average | Min | Max | Std. Dev. | Error % | Throughput | Received KB/sec | Sent KB/sec | Avg. Bytes
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
HTTP Request | 101 | 20 | 4 | 210 | 21.71 | 0.000% | 8.01587 | 1.02 | 10.48 | 130.0
TOTAL | 101 | 20 | 4 | 210 | 21.71 | 0.000% | 8.01587 | 1.02 | 10.48 | 130.0

### 2nd run

#### end-to-end
```bash
First request: 2018-07-18T09:27:42.188Z
Last request: 2018-07-18T09:28:13.908Z
Total number of lines in log file: 1010
Number of unique matched entries: 101
Total difference of all requests in seconds: 31.72
Shortest response time in second: 0.31
Longest response time in second: 15.617
The average transaction in second: 8.895287128712871
Average transactions per second: 3.184110970996217
```

#### ml-api-adapter
```bash
Performance Statistics   2018-07-18 11:15:00 - 2018-07-18 11:30:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              2.0           2           2         0.0           1
metricConsumeRecursiveConsumeProcessingTime              0.4           0           7         0.9         101
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2         495
metricConsumeSyncQueueProcessingTime                     1.6           0          19         2.1         101
metricConsumeSyncQueueResolveProcessingTime              0.2           0           5         0.6         101
metricConsumerConnectProcessingTime                    218.0         218         218         0.0           1
metricMlAPIConsumeMessage                               14.2           6         116        15.5         101
metricMlAPIConsumeMessageForEachMsg                     13.8           6         116        15.2         101
metricMlAPIProcessMessage                               13.1           6         115        14.7         101
metricMlAPIRoutePrepare                                  5.6           0         133        13.2         101
metricMlAPIStartConsume                                227.0         227         227         0.0           1
metricProducerConnectProcessingTime                    112.0         112         112         0.0           1
metricProducerSendMessageProcessingTime                  1.0           0           9         1.5         101
```

#### central-ledger
```bash
Performance Statistics   2018-07-18 11:15:00 - 2018-07-18 11:30:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     698.0         698         698         0.0           1
metricCenLedgerCreateHandler                           530.4         105        1198       428.5           7
metricCenLedgerCreatePositionHandlers                  208.5         205         212         3.5           2
metricCenLedgerCreatePrepareHandler                    207.7         105         313        84.9           3
metricCenLedgerCreateRejectHandler                    1093.0        1093        1093         0.0           1
metricCenLedgerCreateTransferHandler                  1198.0        1198        1198         0.0           1
metricCenLedgerPositions                                13.8           6          75         9.6         101
metricCenLedgerProduceMessage                            5.3           0         896        51.3         303
metricCenLedgerRegisterAllHandlers                    3770.0        3770        3770         0.0           1
metricCenLedgerRegisterAllPositionHandlers             421.0         421         421         0.0           1
metricCenLedgerRegisterAllTransferHandlers            3304.0        3304        3304         0.0           1
metricCenLedgerRegisterPositionHandlers                421.0         421         421         0.0           1
metricCenLedgerTransferPrepare                          80.2          31        1000        97.3         101
metricCenLedgerTransferTransfer                          5.5           0          24         5.2         101
metricConsumeProcessingTime                              0.6           0           1         0.5           7
metricConsumeRecursiveConsumeProcessingTime              0.2           0           4         0.6         303
metricConsumeRecursiveProcessingTime                     0.0           0          14         0.3        2115
metricConsumeSyncQueueProcessingTime                     1.8           0          20         2.5         303
metricConsumeSyncQueueResolveProcessingTime              0.7           0          14         1.4         303
metricConsumerConnectProcessingTime                    528.1         104        1197       428.7           7
metricProducerConnectProcessingTime                    888.0         888         888         0.0           1
metricProducerSendMessageProcessingTime                  0.8           0          15         1.7         303
```
#### JMeter
Label | # Samples | Average | Min | Max | Std. Dev. | Error % | Throughput | Received KB/sec | Sent KB/sec | Avg. Bytes
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
HTTP Request | 101 | 19 | 4 | 244 | 24.14 | 0.000% | 6.23919 | 0.79 | 8.16 | 130.0
TOTAL | 101 | 19 | 4 | 244 | 24.14 | 0.000% | 6.23919 | 0.79 | 8.16 | 130.0


## Use Case 3 - Base-line 100 messages with Auto-commit disabled + manual commits enabled
...

## Use Case 4 - Base-line 100 messages with Auto-commit disabled + manual commits disabled
...
