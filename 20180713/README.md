# 20180712T12h00

## Use Case 1 - Singleton Producer Fix + Auto-commit enabled + 100 Consecutive messages

### Testing Parameters:
- Batch Size: 1
- JMeter Threads: 1
- Commit Sync Enabled: True
- 100 Transfer-Prepare Messages

### 1st Run:

#### Ml-API-Adapter:
```bash
Performance Statistics   2018-07-13 10:00:00 - 2018-07-13 10:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeRecursiveConsumeProcessingTime              0.4           0           3         0.6         100
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.1         131
metricConsumeSyncQueueProcessingTime                     2.1           1          12         1.5         101
metricConsumeSyncQueueResolveProcessingTime              0.2           0           1         0.4         101
metricMlAPIConsumeMessage                               20.5           8          83        15.8         101
metricMlAPIConsumeMessageForEachMsg                     19.9           8          82        15.7         101
metricMlAPIProcessMessage                               19.3           7          81        15.5         101
metricMlAPIRoutePrepare                                  2.1           1           7         0.9         100
metricProducerSendMessageProcessingTime                  0.7           0           5         0.8         100
```

#### Central-Ledger:
```bash
Performance Statistics   2018-07-13 10:00:00 - 2018-07-13 10:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     781.0         781         781         0.0           1
metricCenLedgerCreateHandler                           502.9         115        1123       383.5           7
metricCenLedgerCreatePositionHandlers                  205.5         115         296        90.5           2
metricCenLedgerCreatePrepareHandler                    224.3         119         339        90.1           3
metricCenLedgerCreateRejectHandler                     881.0         881         881         0.0           1
metricCenLedgerCreateTransferHandler                  1123.0        1123        1123         0.0           1
metricCenLedgerPositions                                16.6           7          71        11.5         101
metricCenLedgerProduceMessage                            5.0           0         987        56.5         303
metricCenLedgerRegisterAllHandlers                    3582.0        3582        3582         0.0           1
metricCenLedgerRegisterAllPositionHandlers             429.0         429         429         0.0           1
metricCenLedgerRegisterAllTransferHandlers            3127.0        3127        3127         0.0           1
metricCenLedgerRegisterPositionHandlers                428.0         428         428         0.0           1
metricCenLedgerTransferPrepare                          84.1          35        1115       107.1         101
metricCenLedgerTransferTransfer                          4.3           1          22         3.9         101
metricConsumeProcessingTime                              0.4           0           2         0.7           7
metricConsumeRecursiveConsumeProcessingTime              0.2           0           3         0.4         303
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.1         609
metricConsumeSyncQueueProcessingTime                     1.7           0          17         1.9         303
metricConsumeSyncQueueResolveProcessingTime              0.3           0           2         0.5         303
metricConsumerConnectProcessingTime                    500.0         113        1122       384.0           7
metricProducerConnectProcessingTime                    985.0         985         985         0.0           1
metricProducerSendMessageProcessingTime                  0.8           0          18         1.5         303
```
#### Golden-path Transfer-Prepare:
```bash
First request: 2018-07-13T08:03:36.963Z
Last request: 2018-07-13T08:03:54.382Z
Total number of lines in log file: 1007
Number of unique matched entries: 91
Total difference of all requests in seconds: 17.419
Shortest response time in second: 1.112
Longest response time in second: 18.969
The average transaction in second: 10.272934065934065
Average transactions per second: 5.224180492565589
```

#### JMeter
| Label | # Samples | Average | Min | Max | Std. Dev. | Error % | Throughput | Received KB/sec | Sent KB/sec | Avg. Bytes |
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| HTTP Request | 201 | 11 | 6 | 150 | 14.22 | 0.000% | 58.2/min | 0.12 | 1.27 | 130.0 |
| TOTAL | 201 | 11 | 6 | 150 | 14.22 | 0.000% | 58.2/min | 0.12 | 1.27 | 130.0 |


### 2nd Run:

#### Ml-API-Adapter:
```bash
Performance Statistics   2018-07-13 12:00:00 - 2018-07-13 12:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeRecursiveConsumeProcessingTime              0.3           0           1         0.5         100
metricConsumeRecursiveProcessingTime                     0.1           0           1         0.2         172
metricConsumeSyncQueueProcessingTime                     1.9           1           8         1.2         100
metricConsumeSyncQueueResolveProcessingTime              0.2           0           1         0.4         100
metricMlAPIConsumeMessage                               25.0           6         172        28.7         100
metricMlAPIConsumeMessageForEachMsg                     24.5           6         172        28.6         100
metricMlAPIProcessMessage                               24.0           6         170        28.4         100
metricMlAPIRoutePrepare                                  2.7           1          11         1.7         100
metricProducerSendMessageProcessingTime                  0.9           0           4         0.8         100
```

#### Central-Ledger:
```bash
Performance Statistics   2018-07-13 12:00:00 - 2018-07-13 12:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerPositions                                12.8           6          95         9.6         101
metricCenLedgerProduceMessage                            2.7           0         423        24.2         303
metricCenLedgerTransferPrepare                          84.1          33        1059       135.4         101
metricCenLedgerTransferTransfer                          3.0           1          14         1.8         101
metricConsumeRecursiveConsumeProcessingTime              0.1           0           3         0.4         303
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2        1860
metricConsumeSyncQueueProcessingTime                     1.3           0           7         0.8         303
metricConsumeSyncQueueResolveProcessingTime              0.3           0           2         0.5         303
metricProducerConnectProcessingTime                    420.0         420         420         0.0           1
metricProducerSendMessageProcessingTime                  0.5           0           4         0.8         303
```
#### Golden-path Transfer-Prepare:
```bash
First request: 2018-07-13T10:04:46.562Z
Last request: 2018-07-13T10:04:58.526Z
Total number of lines in log file: 1005
Number of unique matched entries: 98
Total difference of all requests in seconds: 11.964
Shortest response time in second: 0.994
Longest response time in second: 16.323
The average transaction in second: 8.903622448979592
Average transactions per second: 8.191240387830156
```

#### JMeter
| Label | # Samples | Average | Min | Max | Std. Dev. | Error % | Throughput | Received KB/sec | Sent KB/sec | Avg. Bytes |
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| HTTP Request | 101 | 17 | 7 | 254 | 24.72 | 0.000% | 7.8/sec | 0.99 | 10.15 | 130.0 |
| TOTAL | 101 | 17 | 7 | 254 | 24.72 | 0.000% | 7.8/sec | 0.99 | 10.15 | 130.0 |


## Use Case 2 - - Singleton Producer Fix + Auto-commit enabled + 100 Consecutive messages + 10 Threads

### Testing Parameters:
- Batch Size: 1
- JMeter Threads: 10
- Commit Sync Enabled: True
- 100 Transfer-Prepare Messages

### 1st Run:

#### Ml-API-Adapter:
```bash
Performance Statistics   2018-07-13 12:15:00 - 2018-07-13 12:30:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeRecursiveConsumeProcessingTime              0.3           0           2         0.5         100
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.1         128
metricConsumeSyncQueueProcessingTime                     1.8           1           7         1.0         101
metricConsumeSyncQueueResolveProcessingTime              0.2           0           2         0.5         101
metricMlAPIConsumeMessage                               14.6           6          93        11.8         101
metricMlAPIConsumeMessageForEachMsg                     14.0           6          93        11.7         101
metricMlAPIProcessMessage                               13.4           6          92        11.6         101
metricMlAPIRoutePrepare                                  2.2           1           6         1.0         100
metricProducerSendMessageProcessingTime                  0.7           0           2         0.6         100
```

#### Central-Ledger:
```bash
Performance Statistics   2018-07-13 12:15:00 - 2018-07-13 12:30:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     560.0         560         560         0.0           1
metricCenLedgerCreateHandler                           386.6         211         792       208.1           7
metricCenLedgerCreatePositionHandlers                  238.0         219         257        19.0           2
metricCenLedgerCreatePrepareHandler                    288.7         212         436       104.2           3
metricCenLedgerCreateRejectHandler                     451.0         451         451         0.0           1
metricCenLedgerCreateTransferHandler                   792.0         792         792         0.0           1
metricCenLedgerPositions                                16.5           7          91        15.7         101
metricCenLedgerProduceMessage                            4.3           0         881        50.5         303
metricCenLedgerRegisterAllHandlers                    2781.0        2781        2781         0.0           1
metricCenLedgerRegisterAllPositionHandlers             494.0         494         494         0.0           1
metricCenLedgerRegisterAllTransferHandlers            2241.0        2241        2241         0.0           1
metricCenLedgerRegisterPositionHandlers                494.0         494         494         0.0           1
metricCenLedgerTransferPrepare                          82.0          35        1008        96.8         101
metricCenLedgerTransferTransfer                          3.1           1          11         2.0         101
metricConsumeProcessingTime                              0.4           0           1         0.5           7
metricConsumeRecursiveConsumeProcessingTime              0.1           0           2         0.4         303
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2         536
metricConsumeSyncQueueProcessingTime                     1.4           0           8         1.1         303
metricConsumeSyncQueueResolveProcessingTime              0.3           0           8         0.7         303
metricConsumerConnectProcessingTime                    384.4         209         790       208.6           7
metricProducerConnectProcessingTime                    879.0         879         879         0.0           1
metricProducerSendMessageProcessingTime                  0.6           0           4         0.8         303
```
#### Golden-path Transfer-Prepare:
```bash
First request: 2018-07-13T10:20:42.854Z
Last request: 2018-07-13T10:21:01.580Z
Total number of lines in log file: 1008
Number of unique matched entries: 94
Total difference of all requests in seconds: 18.726
Shortest response time in second: 0.152
Longest response time in second: 18.674
The average transaction in second: 10.385468085106382
Average transactions per second: 5.01975862437253
```

#### JMeter
| Label | # Samples | Average | Min | Max | Std. Dev. | Error % | Throughput | Received KB/sec | Sent KB/sec | Avg. Bytes |
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| HTTP Request | 101 | 12 | 6 | 153 | 14.73 | 0.000% | 5.1/sec | 0.64 | 6.60 | 130.0 |
| TOTAL | 101 | 12 | 6 | 153 | 14.73 | 0.000% | 5.1/sec | 0.64 | 6.60 | 130.0 |
