# 20180712T12h00

## Use Case 1 - Base-line

### Testing Parameters:
- Batch Size: 1
- Commit Sync Enabled: True
- Single Transfer-Prepare Message

### 1st Run:

#### Ml-API-Adapter:
```bash
Performance Statistics   2018-07-12 14:15:00 - 2018-07-12 14:30:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCommitMessageSyncProcessingTime                   11.5           3          30         8.5          10
metricConsumeProcessingTime                              2.0           2           2         0.0           1
metricConsumeRecursiveConsumeProcessingTime              0.5           0           1         0.5          10
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.1         149
metricConsumeSyncQueueProcessingTime                     2.9           1           7         2.0          10
metricConsumeSyncQueueResolveProcessingTime              0.2           0           1         0.4          10
metricConsumerConnectProcessingTime                    149.0         149         149         0.0           1
metricMlAPIConsumeMessage                               57.3          24         149        35.2          10
metricMlAPIConsumeMessageForEachMsg                     56.5          23         148        35.0          10
metricMlAPIProcessMessage                               43.9          16         141        35.7          10
metricMlAPIStartConsume                                156.0         156         156         0.0           1
metricProducerConnectProcessingTime                    185.4         110         225        48.4          10
metricProducerSendMessageProcessingTime                  0.7           0           3         0.9          10
```

#### Central-Ledger:
```bash
Performance Statistics   2018-07-12 14:15:00 - 2018-07-12 14:30:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     749.0         749         749         0.0           1
metricCenLedgerCreateHandler                           453.0         112        1616       518.2           7
metricCenLedgerCreatePositionHandlers                  124.0         113         135        11.0           2
metricCenLedgerCreatePrepareHandler                    304.7         221         462       111.3           3
metricCenLedgerCreateRejectHandler                    1618.0        1618        1618         0.0           1
metricCenLedgerCreateTransferHandler                   113.0         113         113         0.0           1
metricCenLedgerPositions                              1166.2         684        1917       312.7          10
metricCenLedgerProduceMessage                          983.9         113        1808       285.4          30
metricCenLedgerRegisterAllHandlers                    3216.0        3216        3216         0.0           1
metricCenLedgerRegisterAllPositionHandlers             251.0         251         251         0.0           1
metricCenLedgerRegisterAllTransferHandlers            2946.0        2946        2946         0.0           1
metricCenLedgerRegisterPositionHandlers                251.0         251         251         0.0           1
metricCenLedgerTransferPrepare                        1026.7         196        1420       346.8          10
metricCenLedgerTransferTransfer                        939.9         679        1019       128.4          10
metricCommitMessageSyncProcessingTime                    7.3           3          24         5.4          30
metricConsumeProcessingTime                              0.9           0           2         0.6           7
metricConsumeRecursiveConsumeProcessingTime              0.3           0           1         0.4          30
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2         758
metricConsumeSyncQueueProcessingTime                     1.6           0           7         1.4          30
metricConsumeSyncQueueResolveProcessingTime              0.4           0           1         0.5          30
metricConsumerConnectProcessingTime                    448.6         108        1609       517.5           7
metricProducerConnectProcessingTime                    981.8         111        1807       285.3          30
metricProducerSendMessageProcessingTime                  0.5           0           4         0.8          30
```
#### Golden-path Transfer-Prepare:
```bash
First request: 2018-07-12T12:23:06.613Z
Last request: 2018-07-12T12:25:28.362Z
Total number of lines in log file: 100
Number of unique matched entries: 9
Total difference of all requests in seconds: 141.749
Shortest response time in second: 3.925
Longest response time in second: 5.48
The average transaction in second: 4.354444444444445
Average transactions per second: 0.06349251141101525
```

### 2nd Run:

#### Ml-API-Adapter:
```bash
Performance Statistics   2018-07-12 14:30:00 - 2018-07-12 14:45:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCommitMessageSyncProcessingTime                   16.0          16          16         0.0           1
metricConsumeProcessingTime                              6.0           6           6         0.0           1
metricConsumeRecursiveConsumeProcessingTime              0.0           0           0         0.0           1
metricConsumeRecursiveProcessingTime                     0.1           0           1         0.2          78
metricConsumeSyncQueueProcessingTime                     7.0           7           7         0.0           1
metricConsumeSyncQueueResolveProcessingTime              1.0           1           1         0.0           1
metricConsumerConnectProcessingTime                    233.0         233         233         0.0           1
metricMlAPIConsumeMessage                               83.0          83          83         0.0           1
metricMlAPIConsumeMessageForEachMsg                     83.0          83          83         0.0           1
metricMlAPIProcessMessage                               65.0          65          65         0.0           1
metricMlAPIStartConsume                                251.0         251         251         0.0           1
metricProducerConnectProcessingTime                    214.0         214         214         0.0           1
metricProducerSendMessageProcessingTime                  1.0           1           1         0.0           1
```

#### Central-Ledger:
```bash
Performance Statistics   2018-07-12 14:30:00 - 2018-07-12 14:45:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     655.0         655         655         0.0           1
metricCenLedgerCreateHandler                           353.6         117         883       278.9           7
metricCenLedgerCreatePositionHandlers                  133.0         117         149        16.0           2
metricCenLedgerCreatePrepareHandler                    224.3         120         342        91.1           3
metricCenLedgerCreateRejectHandler                     344.0         344         344         0.0           1
metricCenLedgerCreateTransferHandler                   883.0         883         883         0.0           1
metricCenLedgerPositions                              1010.0        1010        1010         0.0           1
metricCenLedgerProduceMessage                          931.7         903         972        29.4           3
metricCenLedgerRegisterAllHandlers                    2522.0        2522        2522         0.0           1
metricCenLedgerRegisterAllPositionHandlers             270.0         270         270         0.0           1
metricCenLedgerRegisterAllTransferHandlers            2225.0        2225        2225         0.0           1
metricCenLedgerRegisterPositionHandlers                270.0         270         270         0.0           1
metricCenLedgerTransferPrepare                        1020.0        1020        1020         0.0           1
metricCenLedgerTransferTransfer                        909.0         909         909         0.0           1
metricCommitMessageSyncProcessingTime                    4.0           3           5         0.8           3
metricConsumeProcessingTime                              0.4           0           1         0.5           7
metricConsumeRecursiveConsumeProcessingTime              0.3           0           1         0.5           3
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2         376
metricConsumeSyncQueueProcessingTime                     3.0           2           4         0.8           3
metricConsumeSyncQueueResolveProcessingTime              0.3           0           1         0.5           3
metricConsumerConnectProcessingTime                    350.7         115         882       280.2           7
metricProducerConnectProcessingTime                    930.3         902         971        29.5           3
metricProducerSendMessageProcessingTime                  0.0           0           0         0.0           3
```
#### Golden-path Transfer-Prepare:
```bash
First request: 2018-07-12T12:37:25.428Z
Last request: 2018-07-12T12:37:29.230Z
Total number of lines in log file: 10
Number of unique matched entries: 1
Total difference of all requests in seconds: 3.802
Shortest response time in second: 3.802
Longest response time in second: 3.802
The average transaction in second: 3.802
Average transactions per second: 0.2630194634402946
```

## Use Case 2 - Singleton Producer Fix

### Testing Parameters:
- Batch Size: 1
- Commit Sync Enabled: True
- Single Transfer-Prepare Message
- Fix for Producer. Producer is not created & connected everytime a message is produced.

### 1st Run:

#### Ml-API-Adapter:
```bash
Performance Statistics   2018-07-12 15:45:00 - 2018-07-12 16:00:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCommitMessageSyncProcessingTime                   11.0          11          11         0.0           1
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              1.0           1           1         0.0           1
metricConsumeRecursiveProcessingTime                     0.1           0           1         0.3          42
metricConsumeSyncQueueProcessingTime                    11.0          11          11         0.0           1
metricConsumeSyncQueueResolveProcessingTime              1.0           1           1         0.0           1
metricConsumerConnectProcessingTime                    142.0         142         142         0.0           1
metricMlAPIConsumeMessage                              112.0         112         112         0.0           1
metricMlAPIConsumeMessageForEachMsg                    111.0         111         111         0.0           1
metricMlAPIProcessMessage                               98.0          98          98         0.0           1
metricMlAPIStartConsume                                147.0         147         147         0.0           1
metricProducerConnectProcessingTime                    115.0         115         115         0.0           1
metricProducerSendMessageProcessingTime                  1.0           1           1         0.0           1
```

#### Central-Ledger:
```bash
Performance Statistics   2018-07-12 15:45:00 - 2018-07-12 16:00:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     683.0         683         683         0.0           1
metricCenLedgerCreateHandler                           456.0         116        1496       459.7           7
metricCenLedgerCreatePositionHandlers                  180.5         139         222        41.5           2
metricCenLedgerCreatePrepareHandler                    227.7         117         343        92.3           3
metricCenLedgerCreateRejectHandler                     324.0         324         324         0.0           1
metricCenLedgerCreateTransferHandler                  1496.0        1496        1496         0.0           1
metricCenLedgerPositions                              1758.0        1758        1758         0.0           1
metricCenLedgerProduceMessage                         1108.7         653        1635       404.0           3
metricCenLedgerRegisterAllHandlers                    3242.0        3242        3242         0.0           1
metricCenLedgerRegisterAllPositionHandlers             368.0         368         368         0.0           1
metricCenLedgerRegisterAllTransferHandlers            2848.0        2848        2848         0.0           1
metricCenLedgerRegisterPositionHandlers                368.0         368         368         0.0           1
metricCenLedgerTransferPrepare                        1218.0        1218        1218         0.0           1
metricCenLedgerTransferTransfer                       1063.0        1063        1063         0.0           1
metricCommitMessageSyncProcessingTime                   27.3          11          48        15.4           3
metricConsumeProcessingTime                              0.4           0           2         0.7           7
metricConsumeRecursiveConsumeProcessingTime              0.3           0           1         0.5           3
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.1         164
metricConsumeSyncQueueProcessingTime                     3.0           2           4         0.8           3
metricConsumeSyncQueueResolveProcessingTime              0.7           0           1         0.5           3
metricConsumerConnectProcessingTime                    453.0         114        1495       460.6           7
metricProducerConnectProcessingTime                   1103.0         650        1633       405.0           3
metricProducerSendMessageProcessingTime                  0.3           0           1         0.5           3
```
#### Golden-path Transfer-Prepare:
```bash
First request: 2018-07-12T13:51:40.054Z
Last request: 2018-07-12T13:51:44.569Z
Total number of lines in log file: 10
Number of unique matched entries: 1
Total difference of all requests in seconds: 4.515
Shortest response time in second: 4.515
Longest response time in second: 4.515
The average transaction in second: 4.515
Average transactions per second: 0.221483942414175
```

### 2nd Run:

#### Ml-API-Adapter:
```bash
Performance Statistics   2018-07-12 15:45:00 - 2018-07-12 16:00:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCommitMessageSyncProcessingTime                   32.0          32          32         0.0           1
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              1.0           1           1         0.0           1
metricConsumeRecursiveProcessingTime                     0.0           0           0         0.0          30
metricConsumeSyncQueueProcessingTime                    10.0          10          10         0.0           1
metricConsumeSyncQueueResolveProcessingTime              0.0           0           0         0.0           1
metricConsumerConnectProcessingTime                    161.0         161         161         0.0           1
metricMlAPIConsumeMessage                              119.0         119         119         0.0           1
metricMlAPIConsumeMessageForEachMsg                    118.0         118         118         0.0           1
metricMlAPIProcessMessage                               84.0          84          84         0.0           1
metricMlAPIStartConsume                                169.0         169         169         0.0           1
metricProducerConnectProcessingTime                    127.0         127         127         0.0           1
metricProducerSendMessageProcessingTime                  1.0           1           1         0.0           1
```

#### Central-Ledger:
```bash
Performance Statistics   2018-07-12 15:45:00 - 2018-07-12 16:00:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     882.0         882         882         0.0           1
metricCenLedgerCreateHandler                           468.7         109        1600       526.4           7
metricCenLedgerCreatePositionHandlers                  119.0         110         128         9.0           2
metricCenLedgerCreatePrepareHandler                    225.0         121         341        90.2           3
metricCenLedgerCreateRejectHandler                    1601.0        1601        1601         0.0           1
metricCenLedgerCreateTransferHandler                   234.0         234         234         0.0           1
metricCenLedgerPositions                               627.0         627         627         0.0           1
metricCenLedgerProduceMessage                          576.3         453         672        91.5           3
metricCenLedgerRegisterAllHandlers                    3323.0        3323        3323         0.0           1
metricCenLedgerRegisterAllPositionHandlers             243.0         243         243         0.0           1
metricCenLedgerRegisterAllTransferHandlers            3060.0        3060        3060         0.0           1
metricCenLedgerRegisterPositionHandlers                243.0         243         243         0.0           1
metricCenLedgerTransferPrepare                         623.0         623         623         0.0           1
metricCenLedgerTransferTransfer                        688.0         688         688         0.0           1
metricCommitMessageSyncProcessingTime                   11.7           3          18         6.3           3
metricConsumeProcessingTime                              0.1           0           1         0.3           7
metricConsumeRecursiveConsumeProcessingTime              0.7           0           1         0.5           3
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2         159
metricConsumeSyncQueueProcessingTime                     2.7           2           4         0.9           3
metricConsumeSyncQueueResolveProcessingTime              1.0           1           1         0.0           3
metricConsumerConnectProcessingTime                    466.3         107        1596       526.1           7
metricProducerConnectProcessingTime                    574.3         450         670        92.1           3
metricProducerSendMessageProcessingTime                  1.0           1           1         0.0           3
```
#### Golden-path Transfer-Prepare:
```bash
First request: 2018-07-12T13:56:56.171Z
Last request: 2018-07-12T13:56:59.324Z
Total number of lines in log file: 10
Number of unique matched entries: 1
Total difference of all requests in seconds: 3.153
Shortest response time in second: 3.153
Longest response time in second: 3.153
The average transaction in second: 3.153
Average transactions per second: 0.3171582619727244
```

## Use Case # - TBC

### Testing Parameters:
- Batch Size: 1
- Commit Sync Enabled: True
- Single Transfer-Prepare Message

### 1st Run:

#### Ml-API-Adapter:
```bash

```

#### Central-Ledger:
```bash

```
#### Golden-path Transfer-Prepare:
```bash

```