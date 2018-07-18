# 20180718T17h46 - Perf-test-02

## Use Case 1 - Base-line single message with Auto-commit enabled

### Testing Parameters:
- AWS: 1x m4.2xlarge
- 1 Transfer-Prepare Messages
- Batch Size: 1
- JMeter Threads: 1
- Commit Sync Enabled: false
- Auto-commit enabled: true
- Auto-commit interval: 200

### 1st run

#### end-to-end
```bash
First request: 2018-07-18T12:55:00.647Z
Last request: 2018-07-18T12:55:03.684Z
Total number of lines in log file: 10
Number of unique matched entries: 1
Total difference of all requests in seconds: 3.037
Shortest response time in second: 3.037
Longest response time in second: 3.037
The average transaction in second: 3.037
Average transactions per second: 0.3292723081988805
```

#### ml-api-adapter
```bash
Performance Statistics   2018-07-18 14:45:00 - 2018-07-18 15:00:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              1.0           1           1         0.0           1
metricConsumeRecursiveProcessingTime                     0.0           0           0         0.0          34
metricConsumeSyncQueueProcessingTime                     8.0           8           8         0.0           1
metricConsumeSyncQueueResolveProcessingTime              1.0           1           1         0.0           1
metricConsumerConnectProcessingTime                    205.0         205         205         0.0           1
metricMlAPIConsumeMessage                               50.0          50          50         0.0           1
metricMlAPIConsumeMessageForEachMsg                     50.0          50          50         0.0           1
metricMlAPIProcessMessage                               49.0          49          49         0.0           1
metricMlAPIRoutePrepare                                118.0         118         118         0.0           1
metricMlAPIStartConsume                                210.0         210         210         0.0           1
metricProducerConnectProcessingTime                    115.0         115         115         0.0           1
metricProducerSendMessageProcessingTime                  0.0           0           0         0.0           1
```

#### central-ledger
```bash
Performance Statistics   2018-07-18 14:45:00 - 2018-07-18 15:00:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     685.0         685         685         0.0           1
metricCenLedgerCreateHandler                           533.6         108        1243       436.9           7
metricCenLedgerCreatePositionHandlers                  159.0         108         210        51.0           2
metricCenLedgerCreatePrepareHandler                    271.3         203         408        96.6           3
metricCenLedgerCreateRejectHandler                    1244.0        1244        1244         0.0           1
metricCenLedgerCreateTransferHandler                  1085.0        1085        1085         0.0           1
metricCenLedgerPositions                                68.0          68          68         0.0           1
metricCenLedgerProduceMessage                          530.0           1        1585       746.0           3
metricCenLedgerRegisterAllHandlers                    3783.0        3783        3783         0.0           1
metricCenLedgerRegisterAllPositionHandlers             321.0         321         321         0.0           1
metricCenLedgerRegisterAllTransferHandlers            3424.0        3424        3424         0.0           1
metricCenLedgerRegisterPositionHandlers                321.0         321         321         0.0           1
metricCenLedgerTransferPrepare                        1653.0        1653        1653         0.0           1
metricCenLedgerTransferTransfer                          2.0           2           2         0.0           1
metricConsumeProcessingTime                              0.1           0           1         0.3           7
metricConsumeRecursiveConsumeProcessingTime              0.3           0           1         0.5           3
metricConsumeRecursiveProcessingTime                     0.0           0           0         0.0         147
metricConsumeSyncQueueProcessingTime                     1.3           1           2         0.5           3
metricConsumeSyncQueueResolveProcessingTime              0.3           0           1         0.5           3
metricConsumerConnectProcessingTime                    532.1         107        1242       437.2           7
metricProducerConnectProcessingTime                   1583.0        1583        1583         0.0           1
metricProducerSendMessageProcessingTime                  0.7           0           1         0.5           3
```

### 2nd run

#### end-to-end
```bash
First request: 2018-07-18T12:57:40.937Z
Last request: 2018-07-18T12:57:43.520Z
Total number of lines in log file: 10
Number of unique matched entries: 1
Total difference of all requests in seconds: 2.583
Shortest response time in second: 2.583
Longest response time in second: 2.583
The average transaction in second: 2.583
Average transactions per second: 0.3871467286101432
```

#### ml-api-adapter
```bash
Performance Statistics   2018-07-18 14:45:00 - 2018-07-18 15:00:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              1.0           1           1         0.0           1
metricConsumeRecursiveProcessingTime                     0.0           0           0         0.0          26
metricConsumeSyncQueueProcessingTime                     8.0           8           8         0.0           1
metricConsumeSyncQueueResolveProcessingTime              1.0           1           1         0.0           1
metricConsumerConnectProcessingTime                    204.0         204         204         0.0           1
metricMlAPIConsumeMessage                               53.0          53          53         0.0           1
metricMlAPIConsumeMessageForEachMsg                     52.0          52          52         0.0           1
metricMlAPIProcessMessage                               51.0          51          51         0.0           1
metricMlAPIRoutePrepare                                125.0         125         125         0.0           1
metricMlAPIStartConsume                                210.0         210         210         0.0           1
metricProducerConnectProcessingTime                    121.0         121         121         0.0           1
metricProducerSendMessageProcessingTime                  0.0           0           0         0.0           1
```

#### central-ledger
```bash
Performance Statistics   2018-07-18 14:45:00 - 2018-07-18 15:00:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     789.0         789         789         0.0           1
metricCenLedgerCreateHandler                           532.7         104        1202       452.8           7
metricCenLedgerCreatePositionHandlers                  157.0         110         204        47.0           2
metricCenLedgerCreatePrepareHandler                    206.7         104         311        84.5           3
metricCenLedgerCreateRejectHandler                    1202.0        1202        1202         0.0           1
metricCenLedgerCreateTransferHandler                  1118.0        1118        1118         0.0           1
metricCenLedgerPositions                                73.0          73          73         0.0           1
metricCenLedgerProduceMessage                          366.3           1        1097       516.7           3
metricCenLedgerRegisterAllHandlers                    3780.0        3780        3780         0.0           1
metricCenLedgerRegisterAllPositionHandlers             318.0         318         318         0.0           1
metricCenLedgerRegisterAllTransferHandlers            3421.0        3421        3421         0.0           1
metricCenLedgerRegisterPositionHandlers                318.0         318         318         0.0           1
metricCenLedgerTransferPrepare                        1187.0        1187        1187         0.0           1
metricCenLedgerTransferTransfer                          1.0           1           1         0.0           1
metricConsumeProcessingTime                              0.1           0           1         0.3           7
metricConsumeRecursiveConsumeProcessingTime              0.0           0           0         0.0           3
metricConsumeRecursiveProcessingTime                     0.0           0           0         0.0         111
metricConsumeSyncQueueProcessingTime                     2.3           1           5         1.9           3
metricConsumeSyncQueueResolveProcessingTime              0.7           0           1         0.5           3
metricConsumerConnectProcessingTime                    531.1         103        1200       453.0           7
metricProducerConnectProcessingTime                   1095.0        1095        1095         0.0           1
metricProducerSendMessageProcessingTime                  0.3           0           1         0.5           3
```

## Use Case 2 - Base-line 100 messages with Auto-commit enabled + manual commits disabled

### Testing Parameters:
- AWS: 1x m4.2xlarge
- Batch Size: 1
- JMeter Threads: 10
- 100 Transfer-Prepare Messages (10 per thread)
- Commit Sync Enabled: false
- Auto-commit enabled: true
- Auto-commit interval: 200

### 1st run

#### end-to-end
```bash
First request: 2018-07-18T13:27:52.242Z
Last request: 2018-07-18T13:28:22.695Z
Total number of lines in log file: 1010
Number of unique matched entries: 101
Total difference of all requests in seconds: 30.453
Shortest response time in second: 0.109
Longest response time in second: 13.25
The average transaction in second: 7.4237326732673266
Average transactions per second: 3.3165862148228418
```

#### ml-api-adapter
```bash
Performance Statistics   2018-07-18 15:15:00 - 2018-07-18 15:30:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              0.2           0           2         0.4         101
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2         145
metricConsumeSyncQueueProcessingTime                     1.3           0          13         1.7         101
metricConsumeSyncQueueResolveProcessingTime              0.3           0           3         0.5         101
metricConsumerConnectProcessingTime                    204.0         204         204         0.0           1
metricMlAPIConsumeMessage                               14.6           6          61        10.8         101
metricMlAPIConsumeMessageForEachMsg                     14.2           6          60        10.7         101
metricMlAPIProcessMessage                               13.5           5          59        10.4         101
metricMlAPIRoutePrepare                                  4.2           0         216        21.3         101
metricMlAPIStartConsume                                211.0         211         211         0.0           1
metricProducerConnectProcessingTime                    212.0         212         212         0.0           1
metricProducerSendMessageProcessingTime                  0.5           0           5         0.9         101
```

#### central-ledger
```bash
Performance Statistics   2018-07-18 15:15:00 - 2018-07-18 15:30:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     489.0         489         489         0.0           1
metricCenLedgerCreateHandler                           518.0         203        1201       417.1           7
metricCenLedgerCreatePositionHandlers                  208.0         204         212         4.0           2
metricCenLedgerCreatePrepareHandler                    272.3         203         410        97.3           3
metricCenLedgerCreateRejectHandler                    1201.0        1201        1201         0.0           1
metricCenLedgerCreateTransferHandler                  1118.0        1118        1118         0.0           1
metricCenLedgerPositions                                12.1           5          69        11.6         101
metricCenLedgerProduceMessage                            4.4           0        1099        63.0         303
metricCenLedgerRegisterAllHandlers                    3686.0        3686        3686         0.0           1
metricCenLedgerRegisterAllPositionHandlers             419.0         419         419         0.0           1
metricCenLedgerRegisterAllTransferHandlers            3219.0        3219        3219         0.0           1
metricCenLedgerRegisterPositionHandlers                419.0         419         419         0.0           1
metricCenLedgerTransferPrepare                          55.3          23        1205       116.2         101
metricCenLedgerTransferTransfer                          1.7           0           8         1.4         101
metricConsumeProcessingTime                              0.1           0           1         0.3           7
metricConsumeRecursiveConsumeProcessingTime              0.1           0           1         0.3         303
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.1         545
metricConsumeSyncQueueProcessingTime                     0.5           0           4         0.6         303
metricConsumeSyncQueueResolveProcessingTime              0.1           0           1         0.3         303
metricConsumerConnectProcessingTime                    516.6         202        1200       417.5           7
metricProducerConnectProcessingTime                   1097.0        1097        1097         0.0           1
metricProducerSendMessageProcessingTime                  0.2           0           4         0.5         303
```

#### JMeter

Label | # Samples | Average | Min | Max | Std. Dev. | Error % | Throughput | Received KB/sec | Sent KB/sec | Avg. Bytes
--- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---
HTTP Request | 101 | 11 | 3 | 263 | 25.65 | 0.000% | 5.85643 | 0.74 | 7.66 | 130.0
TOTAL | 101 | 11 | 3 | 263 | 25.65 | 0.000% | 5.85643 | 0.74 | 7.66 | 130.0

### 2nd run

#### end-to-end
```bash
First request: 2018-07-18T13:38:16.229Z
Last request: 2018-07-18T13:38:44.616Z
Total number of lines in log file: 1010
Number of unique matched entries: 101
Total difference of all requests in seconds: 28.387
Shortest response time in second: 0.1
Longest response time in second: 14.038
The average transaction in second: 8.035247524752476
Average transactions per second: 3.5579666748863916
```

#### ml-api-adapter
```bash
Performance Statistics   2018-07-18 15:30:00 - 2018-07-18 15:45:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              0.2           0           1         0.4         101
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2         167
metricConsumeSyncQueueProcessingTime                     1.2           0           7         0.9         101
metricConsumeSyncQueueResolveProcessingTime              0.1           0           1         0.4         101
metricConsumerConnectProcessingTime                    204.0         204         204         0.0           1
metricMlAPIConsumeMessage                                8.5           5          32         3.7         101
metricMlAPIConsumeMessageForEachMsg                      8.1           5          31         3.7         101
metricMlAPIProcessMessage                                7.6           4          30         3.7         101
metricMlAPIRoutePrepare                                  3.5           0         209        20.6         101
metricMlAPIStartConsume                                209.0         209         209         0.0           1
metricProducerConnectProcessingTime                    204.0         204         204         0.0           1
metricProducerSendMessageProcessingTime                  0.6           0          12         1.5         101
```

#### central-ledger
```bash
Performance Statistics   2018-07-18 15:30:00 - 2018-07-18 15:45:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     587.0         587         587         0.0           1
metricCenLedgerCreateHandler                           530.3         204        1204       414.5           7
metricCenLedgerCreatePositionHandlers                  208.0         204         212         4.0           2
metricCenLedgerCreatePrepareHandler                    272.7         204         410        97.1           3
metricCenLedgerCreateRejectHandler                    1205.0        1205        1205         0.0           1
metricCenLedgerCreateTransferHandler                  1100.0        1100        1100         0.0           1
metricCenLedgerPositions                                14.1           5          83        18.8         101
metricCenLedgerProduceMessage                            3.9           0         876        50.2         303
metricCenLedgerRegisterAllHandlers                    3763.0        3763        3763         0.0           1
metricCenLedgerRegisterAllPositionHandlers             419.0         419         419         0.0           1
metricCenLedgerRegisterAllTransferHandlers            3303.0        3303        3303         0.0           1
metricCenLedgerRegisterPositionHandlers                419.0         419         419         0.0           1
metricCenLedgerTransferPrepare                          50.8          22         992        95.5         101
metricCenLedgerTransferTransfer                          1.8           0          12         1.8         101
metricConsumeProcessingTime                              0.3           0           1         0.5           7
metricConsumeRecursiveConsumeProcessingTime              0.1           0           2         0.3         303
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.0         647
metricConsumeSyncQueueProcessingTime                     0.6           0           7         0.8         303
metricConsumeSyncQueueResolveProcessingTime              0.2           0           2         0.4         303
metricConsumerConnectProcessingTime                    528.9         203        1203       415.1           7
metricProducerConnectProcessingTime                    874.0         874         874         0.0           1
metricProducerSendMessageProcessingTime                  0.3           0           5         0.6         303
```
#### JMeter

Label | # Samples | Average | Min | Max | Std. Dev. | Error % | Throughput | Received KB/sec | Sent KB/sec | Avg. Bytes
--- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---
HTTP Request | 101 | 10 | 3 | 266 | 26.12 | 0.000% | 7.01779 | 0.89 | 9.18 | 130.0
TOTAL | 101 | 10 | 3 | 266 | 26.12 | 0.000% | 7.01779 | 0.89 | 9.18 | 130.0
