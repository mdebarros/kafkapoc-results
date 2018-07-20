# 20180718T17h46 - Perf-test-02 Base-line

## Use Case Base 1 - Base-line 1 messages with Auto-commit disabled + manual commits enabled + default config from PI2
                       
### Testing Parameters:
- AWS: 1x m4.2xlarge
- Batch Size: 1
- JMeter Threads: 1
- 1 Transfer-Prepare Message
- Commit Sync Enabled: true
- Auto-commit enabled: false
- Kafka version: v1.1.0

### 1st run

#### end-to-end
```bash
First request: 2018-07-20T16:03:33.132Z
Last request: 2018-07-20T16:03:40.007Z
Total number of lines in log file: 10
Number of unique matched entries: 1
Total difference of all requests in seconds: 6.875
Shortest response time in second: 6.875
Longest response time in second: 6.875
The average transaction in second: 6.875
Average transactions per second: 0.14545454545454545
```

#### ml-api-adapter
```bash
Performance Statistics   2018-07-20 18:00:00 - 2018-07-20 18:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              1.0           1           1         0.0           1
metricConsumeRecursiveProcessingTime                     0.0           0           0         0.0          22
metricConsumeSyncQueueProcessingTime                     5.0           5           5         0.0           1
metricConsumeSyncQueueResolveProcessingTime              0.0           0           0         0.0           1
metricConsumerConnectProcessingTime                      5.0           5           5         0.0           1
metricMlAPIConsumeMessage                               14.0          14          14         0.0           1
metricMlAPIConsumeMessageForEachMsg                     13.0          13          13         0.0           1
metricMlAPIProcessMessage                               13.0          13          13         0.0           1
metricMlAPIRoutePrepare                                  5.0           5           5         0.0           1
metricMlAPIStartConsume                                 13.0          13          13         0.0           1
metricProducerConnectProcessingTime                      3.0           3           3         0.0           1
metricProducerSendMessageProcessingTime                  1.0           1           1         0.0           1
```

#### central-ledger
```bash
Performance Statistics   2018-07-20 18:00:00 - 2018-07-20 18:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     996.0         996         996         0.0           1
metricCenLedgerCreateHandler                           146.7           2         996       346.7           7
metricCenLedgerCreatePositionHandlers                    7.0           3          11         4.0           2
metricCenLedgerCreatePrepareHandler                      4.7           3           8         2.4           3
metricCenLedgerCreateRejectHandler                       7.0           7           7         0.0           1
metricCenLedgerCreateTransferHandler                     7.0           7           7         0.0           1
metricCenLedgerPositions                                37.0          37          37         0.0           1
metricCenLedgerProduceMessage                          330.7           0         991       466.9           3
metricCenLedgerRegisterAllHandlers                    1079.0        1079        1079         0.0           1
metricCenLedgerRegisterAllPositionHandlers              18.0          18          18         0.0           1
metricCenLedgerRegisterAllTransferHandlers            1018.0        1018        1018         0.0           1
metricCenLedgerRegisterPositionHandlers                 17.0          17          17         0.0           1
metricCenLedgerTransferPrepare                        1096.0        1096        1096         0.0           1
metricCenLedgerTransferTransfer                          1.0           1           1         0.0           1
metricConsumeProcessingTime                              0.1           0           1         0.3           7
metricConsumeRecursiveConsumeProcessingTime              0.3           0           1         0.5           3
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.1          94
metricConsumeSyncQueueProcessingTime                     1.7           1           2         0.5           3
metricConsumeSyncQueueResolveProcessingTime              0.3           0           1         0.5           3
metricConsumerConnectProcessingTime                    145.6           2         995       346.8           7
metricProducerConnectProcessingTime                    990.0         990         990         0.0           1
metricProducerSendMessageProcessingTime                  0.3           0           1         0.5           3
```

### 2nd run

#### end-to-end
```bash
First request: 2018-07-20T16:05:28.494Z
Last request: 2018-07-20T16:05:34.466Z
Total number of lines in log file: 10
Number of unique matched entries: 1
Total difference of all requests in seconds: 5.972
Shortest response time in second: 5.972
Longest response time in second: 5.972
The average transaction in second: 5.972
Average transactions per second: 0.16744809109176154
```

#### ml-api-adapter
```bash
Performance Statistics   2018-07-20 18:00:00 - 2018-07-20 18:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              0.0           0           0         0.0           1
metricConsumeRecursiveProcessingTime                     0.0           0           0         0.0          24
metricConsumeSyncQueueProcessingTime                     5.0           5           5         0.0           1
metricConsumeSyncQueueResolveProcessingTime              0.0           0           0         0.0           1
metricConsumerConnectProcessingTime                      4.0           4           4         0.0           1
metricMlAPIConsumeMessage                               14.0          14          14         0.0           1
metricMlAPIConsumeMessageForEachMsg                     13.0          13          13         0.0           1
metricMlAPIProcessMessage                               13.0          13          13         0.0           1
metricMlAPIRoutePrepare                                  6.0           6           6         0.0           1
metricMlAPIStartConsume                                 10.0          10          10         0.0           1
metricProducerConnectProcessingTime                      4.0           4           4         0.0           1
metricProducerSendMessageProcessingTime                  1.0           1           1         0.0           1
```

#### central-ledger
```bash
Performance Statistics   2018-07-20 18:00:00 - 2018-07-20 18:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     993.0         993         993         0.0           1
metricCenLedgerCreateHandler                           146.0           2         993       345.8           7
metricCenLedgerCreatePositionHandlers                    7.5           4          11         3.5           2
metricCenLedgerCreatePrepareHandler                      4.7           2           9         3.1           3
metricCenLedgerCreateRejectHandler                       7.0           7           7         0.0           1
metricCenLedgerCreateTransferHandler                     5.0           5           5         0.0           1
metricCenLedgerPositions                                15.0          15          15         0.0           1
metricCenLedgerProduceMessage                          571.7           0        1714       807.8           3
metricCenLedgerRegisterAllHandlers                    1075.0        1075        1075         0.0           1
metricCenLedgerRegisterAllPositionHandlers              18.0          18          18         0.0           1
metricCenLedgerRegisterAllTransferHandlers            1015.0        1015        1015         0.0           1
metricCenLedgerRegisterPositionHandlers                 18.0          18          18         0.0           1
metricCenLedgerTransferPrepare                        1842.0        1842        1842         0.0           1
metricCenLedgerTransferTransfer                          2.0           2           2         0.0           1
metricConsumeProcessingTime                              0.1           0           1         0.3           7
metricConsumeRecursiveConsumeProcessingTime              0.0           0           0         0.0           3
metricConsumeRecursiveProcessingTime                     0.0           0           0         0.0         104
metricConsumeSyncQueueProcessingTime                     1.7           1           3         0.9           3
metricConsumeSyncQueueResolveProcessingTime              0.3           0           1         0.5           3
metricConsumerConnectProcessingTime                    145.0           2         992       345.8           7
metricProducerConnectProcessingTime                   1711.0        1711        1711         0.0           1
metricProducerSendMessageProcessingTime                  0.3           0           1         0.5           3
```

## Use Case Base 2 - Base-line 100 messages with Auto-commit disabled + manual commits enabled + default config from PI2
                       
### Testing Parameters:
- AWS: 1x m4.2xlarge
- Batch Size: 1
- JMeter Threads: 10
- 100 Transfer-Prepare Messages (10 per thread)
- Commit Sync Enabled: true
- Auto-commit enabled: false
- Kafka version: v1.1.0

### 1st run

#### end-to-end
```bash
First request: 2018-07-20T16:09:29.092Z
Last request: 2018-07-20T16:09:50.665Z
Total number of lines in log file: 1000
Number of unique matched entries: 100
Total difference of all requests in seconds: 21.573
Shortest response time in second: 2.594
Longest response time in second: 19.746
The average transaction in second: 11.019260000000001
Average transactions per second: 4.6354239095165255
```

#### ml-api-adapter
```bash
Performance Statistics   2018-07-20 18:00:00 - 2018-07-20 18:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              0.2           0           1         0.4         100
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2         126
metricConsumeSyncQueueProcessingTime                     0.8           0           5         0.7         100
metricConsumeSyncQueueResolveProcessingTime              0.1           0           1         0.3         100
metricConsumerConnectProcessingTime                      5.0           5           5         0.0           1
metricMlAPIConsumeMessage                                4.2           2          14         1.4         100
metricMlAPIConsumeMessageForEachMsg                      3.9           2          14         1.4         100
metricMlAPIProcessMessage                                3.5           2          13         1.4         100
metricMlAPIRoutePrepare                                  0.7           0           6         0.7         100
metricMlAPIStartConsume                                 11.0          11          11         0.0           1
metricProducerConnectProcessingTime                      3.0           3           3         0.0           1
metricProducerSendMessageProcessingTime                  0.1           0           1         0.3         100
```

#### central-ledger
```bash
Performance Statistics   2018-07-20 18:00:00 - 2018-07-20 18:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     990.0         990         990         0.0           1
metricCenLedgerCreateHandler                           148.4           3         989       343.2           7
metricCenLedgerCreatePositionHandlers                   17.5          16          19         1.5           2
metricCenLedgerCreatePrepareHandler                      6.7           4          12         3.8           3
metricCenLedgerCreateRejectHandler                       8.0           8           8         0.0           1
metricCenLedgerCreateTransferHandler                     3.0           3           3         0.0           1
metricCenLedgerPositions                                17.0           5          79        18.9         100
metricCenLedgerProduceMessage                            0.7           0           5         0.6         300
metricCenLedgerRegisterAllHandlers                    1108.0        1108        1108         0.0           1
metricCenLedgerRegisterAllPositionHandlers              41.0          41          41         0.0           1
metricCenLedgerRegisterAllTransferHandlers            1015.0        1015        1015         0.0           1
metricCenLedgerRegisterPositionHandlers                 40.0          40          40         0.0           1
metricCenLedgerTransferPrepare                          31.6          17          94        19.1         100
metricCenLedgerTransferTransfer                          1.1           0           3         0.5         100
metricConsumeProcessingTime                              0.4           0           2         0.7           7
metricConsumeRecursiveConsumeProcessingTime              0.0           0           1         0.2         300
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.1         482
metricConsumeSyncQueueProcessingTime                     0.4           0           1         0.5         300
metricConsumeSyncQueueResolveProcessingTime              0.1           0           1         0.3         300
metricConsumerConnectProcessingTime                    147.1           2         989       343.7           7
metricProducerConnectProcessingTime                      4.0           4           4         0.0           1
metricProducerSendMessageProcessingTime                  0.2           0           1         0.4         300
```

#### JMeter

Label | # Samples | Average | Min | Max | Std. Dev. | Error % | Throughput | Received KB/sec | Sent KB/sec | Avg. Bytes
--- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---
HTTP Request | 100 | 3 | 3 | 28 | 2.56 | 0.000% | 54.20054 | 6.88 | 70.87 | 130.0
TOTAL | 100 | 3 | 3 | 28 | 2.56 | 0.000% | 54.20054 | 6.88 | 70.87 | 130.0

### 2nd run

#### end-to-end
```bash
First request: 2018-07-20T16:09:29.092Z
Last request: 2018-07-20T16:09:50.665Z
Total number of lines in log file: 1000
Number of unique matched entries: 100
Total difference of all requests in seconds: 21.573
Shortest response time in second: 2.594
Longest response time in second: 19.746
The average transaction in second: 11.019260000000001
Average transactions per second: 4.6354239095165255
```

#### ml-api-adapter
```bash
Performance Statistics   2018-07-20 18:00:00 - 2018-07-20 18:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              0.2           0           1         0.4         100
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2         126
metricConsumeSyncQueueProcessingTime                     0.8           0           5         0.7         100
metricConsumeSyncQueueResolveProcessingTime              0.1           0           1         0.3         100
metricConsumerConnectProcessingTime                      5.0           5           5         0.0           1
metricMlAPIConsumeMessage                                4.2           2          14         1.4         100
metricMlAPIConsumeMessageForEachMsg                      3.9           2          14         1.4         100
metricMlAPIProcessMessage                                3.5           2          13         1.4         100
metricMlAPIRoutePrepare                                  0.7           0           6         0.7         100
metricMlAPIStartConsume                                 11.0          11          11         0.0           1
metricProducerConnectProcessingTime                      3.0           3           3         0.0           1
metricProducerSendMessageProcessingTime                  0.1           0           1         0.3         100
```

#### central-ledger
```bash
Performance Statistics   2018-07-20 18:00:00 - 2018-07-20 18:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     990.0         990         990         0.0           1
metricCenLedgerCreateHandler                           148.4           3         989       343.2           7
metricCenLedgerCreatePositionHandlers                   17.5          16          19         1.5           2
metricCenLedgerCreatePrepareHandler                      6.7           4          12         3.8           3
metricCenLedgerCreateRejectHandler                       8.0           8           8         0.0           1
metricCenLedgerCreateTransferHandler                     3.0           3           3         0.0           1
metricCenLedgerPositions                                17.0           5          79        18.9         100
metricCenLedgerProduceMessage                            0.7           0           5         0.6         300
metricCenLedgerRegisterAllHandlers                    1108.0        1108        1108         0.0           1
metricCenLedgerRegisterAllPositionHandlers              41.0          41          41         0.0           1
metricCenLedgerRegisterAllTransferHandlers            1015.0        1015        1015         0.0           1
metricCenLedgerRegisterPositionHandlers                 40.0          40          40         0.0           1
metricCenLedgerTransferPrepare                          31.6          17          94        19.1         100
metricCenLedgerTransferTransfer                          1.1           0           3         0.5         100
metricConsumeProcessingTime                              0.4           0           2         0.7           7
metricConsumeRecursiveConsumeProcessingTime              0.0           0           1         0.2         300
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.1         482
metricConsumeSyncQueueProcessingTime                     0.4           0           1         0.5         300
metricConsumeSyncQueueResolveProcessingTime              0.1           0           1         0.3         300
metricConsumerConnectProcessingTime                    147.1           2         989       343.7           7
metricProducerConnectProcessingTime                      4.0           4           4         0.0           1
metricProducerSendMessageProcessingTime                  0.2           0           1         0.4         300
```

#### JMeter

Label | # Samples | Average | Min | Max | Std. Dev. | Error % | Throughput | Received KB/sec | Sent KB/sec | Avg. Bytes
--- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---
HTTP Request | 100 | 12 | 3 | 389 | 38.27 | 0.000% | 53.61930 | 6.81 | 70.11 | 130.0
TOTAL | 100 | 12 | 3 | 389 | 38.27 | 0.000% | 53.61930 | 6.81 | 70.11 | 130.0
