# 20180712

Mojaloop Golden Path Transfer-prepare:
- JMeter used to emulate DFSP by sending a single Transfer Prepare Request
- Transfer Prepare Request sent to ML-API-Adapter
- Notification Received by ML-API-Adapter with Callback to a Mockserver (emulating DFSP)

## Use Case 1 - Base-line

### Testing Parameters:
- Batch Size: 1
- Commit Sync Enabled: true
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
- Commit Sync Enabled: true
- Single Transfer-Prepare Message
- Fix for Producer. Producer is not created & connected every time a message is produced.

### 1st Run:

#### Ml-API-Adapter:
```bash
Performance Statistics   2018-07-12 16:00:00 - 2018-07-12 16:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     657.0         657         657         0.0           1
metricCenLedgerCreateHandler                           370.9         111         881       267.5           7
metricCenLedgerCreatePositionHandlers                  192.0         159         225        33.0           2
metricCenLedgerCreatePrepareHandler                    220.7         111         333        90.7           3
metricCenLedgerCreateRejectHandler                     348.0         348         348         0.0           1
metricCenLedgerCreateTransferHandler                   882.0         882         882         0.0           1
metricCenLedgerPositions                                52.0          52          52         0.0           1
metricCenLedgerProduceMessage                          355.7           1        1064       500.9           3
metricCenLedgerRegisterAllHandlers                    2647.0        2647        2647         0.0           1
metricCenLedgerRegisterAllPositionHandlers             390.0         390         390         0.0           1
metricCenLedgerRegisterAllTransferHandlers            2221.0        2221        2221         0.0           1
metricCenLedgerRegisterPositionHandlers                389.0         389         389         0.0           1
metricCenLedgerTransferPrepare                        1225.0        1225        1225         0.0           1
metricCenLedgerTransferTransfer                          9.0           9           9         0.0           1
metricCommitMessageSyncProcessingTime                    6.7           3          12         3.9           3
metricConsumeProcessingTime                              0.6           0           2         0.7           7
metricConsumeRecursiveConsumeProcessingTime              0.7           0           1         0.5           3
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2         334
metricConsumeSyncQueueProcessingTime                     3.0           1           6         2.2           3
metricConsumeSyncQueueResolveProcessingTime              1.0           1           1         0.0           3
metricConsumerConnectProcessingTime                    368.9         111         878       267.5           7
metricProducerConnectProcessingTime                   1060.0        1060        1060         0.0           1
metricProducerSendMessageProcessingTime                  0.3           0           1         0.5           3
```

#### Central-Ledger:
```bash
Performance Statistics   2018-07-12 16:00:00 - 2018-07-12 16:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     657.0         657         657         0.0           1
metricCenLedgerCreateHandler                           370.9         111         881       267.5           7
metricCenLedgerCreatePositionHandlers                  192.0         159         225        33.0           2
metricCenLedgerCreatePrepareHandler                    220.7         111         333        90.7           3
metricCenLedgerCreateRejectHandler                     348.0         348         348         0.0           1
metricCenLedgerCreateTransferHandler                   882.0         882         882         0.0           1
metricCenLedgerPositions                                52.0          52          52         0.0           1
metricCenLedgerProduceMessage                          355.7           1        1064       500.9           3
metricCenLedgerRegisterAllHandlers                    2647.0        2647        2647         0.0           1
metricCenLedgerRegisterAllPositionHandlers             390.0         390         390         0.0           1
metricCenLedgerRegisterAllTransferHandlers            2221.0        2221        2221         0.0           1
metricCenLedgerRegisterPositionHandlers                389.0         389         389         0.0           1
metricCenLedgerTransferPrepare                        1225.0        1225        1225         0.0           1
metricCenLedgerTransferTransfer                          9.0           9           9         0.0           1
metricCommitMessageSyncProcessingTime                    6.7           3          12         3.9           3
metricConsumeProcessingTime                              0.6           0           2         0.7           7
metricConsumeRecursiveConsumeProcessingTime              0.7           0           1         0.5           3
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2         334
metricConsumeSyncQueueProcessingTime                     3.0           1           6         2.2           3
metricConsumeSyncQueueResolveProcessingTime              1.0           1           1         0.0           3
metricConsumerConnectProcessingTime                    368.9         111         878       267.5           7
metricProducerConnectProcessingTime                   1060.0        1060        1060         0.0           1
metricProducerSendMessageProcessingTime                  0.3           0           1         0.5           3
```
#### Golden-path Transfer-Prepare:
```bash
First request: 2018-07-12T14:07:17.992Z
Last request: 2018-07-12T14:07:22.398Z
Total number of lines in log file: 10
Number of unique matched entries: 1
Total difference of all requests in seconds: 4.406
Shortest response time in second: 4.406
Longest response time in second: 4.406
The average transaction in second: 4.406
Average transactions per second: 0.22696323195642307
```

### 2nd Run:

#### Ml-API-Adapter:
```bash
Performance Statistics   2018-07-12 16:00:00 - 2018-07-12 16:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCommitMessageSyncProcessingTime                   10.0          10          10         0.0           1
metricConsumeProcessingTime                              5.0           5           5         0.0           1
metricConsumeRecursiveConsumeProcessingTime              1.0           1           1         0.0           1
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2          26
metricConsumeSyncQueueProcessingTime                     9.0           9           9         0.0           1
metricConsumeSyncQueueResolveProcessingTime              6.0           6           6         0.0           1
metricConsumerConnectProcessingTime                    256.0         256         256         0.0           1
metricMlAPIConsumeMessage                              554.0         554         554         0.0           1
metricMlAPIConsumeMessageForEachMsg                    552.0         552         552         0.0           1
metricMlAPIProcessMessage                              541.0         541         541         0.0           1
metricMlAPIRoutePrepare                                222.0         222         222         0.0           1
metricMlAPIStartConsume                                293.0         293         293         0.0           1
metricProducerConnectProcessingTime                    216.0         216         216         0.0           1
metricProducerSendMessageProcessingTime                  1.0           1           1         0.0           1
```

#### Central-Ledger:
```bash
Performance Statistics   2018-07-12 16:00:00 - 2018-07-12 16:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     749.0         749         749         0.0           1
metricCenLedgerCreateHandler                           482.9         111        1658       518.0           7
metricCenLedgerCreatePositionHandlers                  137.0         111         163        26.0           2
metricCenLedgerCreatePrepareHandler                    307.3         225         466       112.2           3
metricCenLedgerCreateRejectHandler                    1659.0        1659        1659         0.0           1
metricCenLedgerCreateTransferHandler                   252.0         252         252         0.0           1
metricCenLedgerPositions                               378.0         378         378         0.0           1
metricCenLedgerProduceMessage                          111.7           1         332       155.8           3
metricCenLedgerRegisterAllHandlers                    3434.0        3434        3434         0.0           1
metricCenLedgerRegisterAllPositionHandlers             281.0         281         281         0.0           1
metricCenLedgerRegisterAllTransferHandlers            3131.0        3131        3131         0.0           1
metricCenLedgerRegisterPositionHandlers                279.0         279         279         0.0           1
metricCenLedgerTransferPrepare                        1300.0        1300        1300         0.0           1
metricCenLedgerTransferTransfer                         16.0          16          16         0.0           1
metricCommitMessageSyncProcessingTime                   14.3          10          21         4.8           3
metricConsumeProcessingTime                              0.7           0           1         0.5           7
metricConsumeRecursiveConsumeProcessingTime              0.7           0           1         0.5           3
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.1         165
metricConsumeSyncQueueProcessingTime                     2.7           2           3         0.5           3
metricConsumeSyncQueueResolveProcessingTime              0.3           0           1         0.5           3
metricConsumerConnectProcessingTime                    478.3         110        1652       517.8           7
metricProducerConnectProcessingTime                    329.0         329         329         0.0           1
metricProducerSendMessageProcessingTime                  1.3           1           2         0.5           3
```
#### Golden-path Transfer-Prepare:
```bash
First request: 2018-07-12T14:14:37.524Z
Last request: 2018-07-12T14:14:40.761Z
Total number of lines in log file: 10
Number of unique matched entries: 1
Total difference of all requests in seconds: 3.237
Shortest response time in second: 3.237
Longest response time in second: 3.237
The average transaction in second: 3.237
Average transactions per second: 0.3089280197713933
```

## Use Case 3 - Singleton Producer Fix + Auto-commit enabled

### Testing Parameters:
- Batch Size: 1
- Commit Sync Enabled: false
- Single Transfer-Prepare Message
- Fix for Producer. Producer is not created & connected every time a message is produced.
- Auto-commit enabled: true
- Auto-commit-internal-ms: 200

### 1st Run:

#### Ml-API-Adapter:
```bash
Performance Statistics   2018-07-12 16:30:00 - 2018-07-12 16:45:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              1.0           1           1         0.0           1
metricConsumeRecursiveProcessingTime                     0.1           0           1         0.3          23
metricConsumeSyncQueueProcessingTime                    15.0          15          15         0.0           1
metricConsumeSyncQueueResolveProcessingTime              1.0           1           1         0.0           1
metricConsumerConnectProcessingTime                    143.0         143         143         0.0           1
metricMlAPIConsumeMessage                               79.0          79          79         0.0           1
metricMlAPIConsumeMessageForEachMsg                     78.0          78          78         0.0           1
metricMlAPIProcessMessage                               76.0          76          76         0.0           1
metricMlAPIRoutePrepare                                225.0         225         225         0.0           1
metricMlAPIStartConsume                                149.0         149         149         0.0           1
metricProducerConnectProcessingTime                    220.0         220         220         0.0           1
metricProducerSendMessageProcessingTime                  1.0           1           1         0.0           1
```

#### Central-Ledger:
```bash
Performance Statistics   2018-07-12 16:30:00 - 2018-07-12 16:45:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     670.0         670         670         0.0           1
metricCenLedgerCreateHandler                           530.9         112        1769       532.7           7
metricCenLedgerCreatePositionHandlers                  257.5         219         296        38.5           2
metricCenLedgerCreatePrepareHandler                    226.7         112         345        95.2           3
metricCenLedgerCreateRejectHandler                     430.0         430         430         0.0           1
metricCenLedgerCreateTransferHandler                  1769.0        1769        1769         0.0           1
metricCenLedgerPositions                                68.0          68          68         0.0           1
metricCenLedgerProduceMessage                          366.3           0        1097       516.7           3
metricCenLedgerRegisterAllHandlers                    3774.0        3774        3774         0.0           1
metricCenLedgerRegisterAllPositionHandlers             527.0         527         527         0.0           1
metricCenLedgerRegisterAllTransferHandlers            3218.0        3218        3218         0.0           1
metricCenLedgerRegisterPositionHandlers                524.0         524         524         0.0           1
metricCenLedgerTransferPrepare                        1229.0        1229        1229         0.0           1
metricCenLedgerTransferTransfer                          3.0           3           3         0.0           1
metricCommitMessageSyncProcessingTime                    9.0           9           9         0.0           1
metricConsumeProcessingTime                              0.4           0           2         0.7           7
metricConsumeRecursiveConsumeProcessingTime              0.0           0           0         0.0           3
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2         124
metricConsumeSyncQueueProcessingTime                     2.3           2           3         0.5           3
metricConsumeSyncQueueResolveProcessingTime              0.7           0           1         0.5           3
metricConsumerConnectProcessingTime                    528.6         111        1768       533.3           7
metricProducerConnectProcessingTime                   1096.0        1096        1096         0.0           1
metricProducerSendMessageProcessingTime                  0.7           0           1         0.5           3
```
#### Golden-path Transfer-Prepare:
```bash
First request: 2018-07-12T14:41:50.491Z
Last request: 2018-07-12T14:41:52.575Z
Total number of lines in log file: 10
Number of unique matched entries: 1
Total difference of all requests in seconds: 2.084
Shortest response time in second: 2.084
Longest response time in second: 2.084
The average transaction in second: 2.084
Average transactions per second: 0.4798464491362764
```

### 2nd Run:

#### Ml-API-Adapter:
```bash
Performance Statistics   2018-07-12 16:45:00 - 2018-07-12 17:00:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              2.0           2           2         0.0           1
metricConsumeRecursiveConsumeProcessingTime              0.0           0           0         0.0           1
metricConsumeRecursiveProcessingTime                     0.1           0           1         0.3          22
metricConsumeSyncQueueProcessingTime                     7.0           7           7         0.0           1
metricConsumeSyncQueueResolveProcessingTime              1.0           1           1         0.0           1
metricConsumerConnectProcessingTime                    175.0         175         175         0.0           1
metricMlAPIConsumeMessage                               50.0          50          50         0.0           1
metricMlAPIConsumeMessageForEachMsg                     50.0          50          50         0.0           1
metricMlAPIProcessMessage                               49.0          49          49         0.0           1
metricMlAPIRoutePrepare                                126.0         126         126         0.0           1
metricMlAPIStartConsume                                184.0         184         184         0.0           1
metricProducerConnectProcessingTime                    121.0         121         121         0.0           1
metricProducerSendMessageProcessingTime                  0.0           0           0         0.0           1
```

#### Central-Ledger:
```bash
Performance Statistics   2018-07-12 16:45:00 - 2018-07-12 17:00:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     798.0         798         798         0.0           1
metricCenLedgerCreateHandler                           547.0         110        1240       454.4           7
metricCenLedgerCreatePositionHandlers                  173.5         131         216        42.5           2
metricCenLedgerCreatePrepareHandler                    223.3         110         337        92.7           3
metricCenLedgerCreateRejectHandler                    1114.0        1114        1114         0.0           1
metricCenLedgerCreateTransferHandler                  1240.0        1240        1240         0.0           1
metricCenLedgerPositions                                94.0          94          94         0.0           1
metricCenLedgerProduceMessage                          358.0           1        1072       504.9           3
metricCenLedgerRegisterAllHandlers                    3868.0        3868        3868         0.0           1
metricCenLedgerRegisterAllPositionHandlers             352.0         352         352         0.0           1
metricCenLedgerRegisterAllTransferHandlers            3491.0        3491        3491         0.0           1
metricCenLedgerRegisterPositionHandlers                352.0         352         352         0.0           1
metricCenLedgerTransferPrepare                        1234.0        1234        1234         0.0           1
metricCenLedgerTransferTransfer                          1.0           1           1         0.0           1
metricCommitMessageSyncProcessingTime                    8.0           8           8         0.0           1
metricConsumeProcessingTime                              0.4           0           1         0.5           7
metricConsumeRecursiveConsumeProcessingTime              0.3           0           1         0.5           3
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.1         104
metricConsumeSyncQueueProcessingTime                     1.7           1           2         0.5           3
metricConsumeSyncQueueResolveProcessingTime              0.7           0           1         0.5           3
metricConsumerConnectProcessingTime                    545.4         109        1239       454.8           7
metricProducerConnectProcessingTime                   1069.0        1069        1069         0.0           1
metricProducerSendMessageProcessingTime                  1.0           1           1         0.0           3
```
#### Golden-path Transfer-Prepare:
```bash
First request: 2018-07-12T14:47:10.994Z
Last request: 2018-07-12T14:47:13.005Z
Total number of lines in log file: 10
Number of unique matched entries: 1
Total difference of all requests in seconds: 2.011
Shortest response time in second: 2.011
Longest response time in second: 2.011
The average transaction in second: 2.011
Average transactions per second: 0.49726504226752855
```

## Use Case 4 - Singleton Producer Fix + commit disabled

### Testing Parameters:
- Batch Size: 1
- Commit Sync Enabled: false
- Single Transfer-Prepare Message
- Fix for Producer. Producer is not created & connected every time a message is produced.
- Auto-commit enabled: false

### 1st Run:

#### Ml-API-Adapter:
```bash
Performance Statistics   2018-07-13 09:30:00 - 2018-07-13 09:45:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              0.0           0           0         0.0           1
metricConsumeRecursiveProcessingTime                     0.0           0           0         0.0          26
metricConsumeSyncQueueProcessingTime                     8.0           8           8         0.0           1
metricConsumeSyncQueueResolveProcessingTime              1.0           1           1         0.0           1
metricConsumerConnectProcessingTime                    192.0         192         192         0.0           1
metricMlAPIConsumeMessage                               64.0          64          64         0.0           1
metricMlAPIConsumeMessageForEachMsg                     64.0          64          64         0.0           1
metricMlAPIProcessMessage                               63.0          63          63         0.0           1
metricMlAPIRoutePrepare                                125.0         125         125         0.0           1
metricMlAPIStartConsume                                198.0         198         198         0.0           1
metricProducerConnectProcessingTime                    120.0         120         120         0.0           1
metricProducerSendMessageProcessingTime                  0.0           0           0         0.0           1
```

#### Central-Ledger:
```bash
Performance Statistics   2018-07-13 09:30:00 - 2018-07-13 09:45:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     650.0         650         650         0.0           1
metricCenLedgerCreateHandler                           437.3         115        1365       415.4           7
metricCenLedgerCreatePositionHandlers                  124.5         116         133         8.5           2
metricCenLedgerCreatePrepareHandler                    285.3         211         431       103.0           3
metricCenLedgerCreateRejectHandler                     374.0         374         374         0.0           1
metricCenLedgerCreateTransferHandler                  1366.0        1366        1366         0.0           1
metricCenLedgerPositions                                75.0          75          75         0.0           1
metricCenLedgerProduceMessage                          349.3           1        1046       492.6           3
metricCenLedgerRegisterAllHandlers                    3113.0        3113        3113         0.0           1
metricCenLedgerRegisterAllPositionHandlers             253.0         253         253         0.0           1
metricCenLedgerRegisterAllTransferHandlers            2835.0        2835        2835         0.0           1
metricCenLedgerRegisterPositionHandlers                252.0         252         252         0.0           1
metricCenLedgerTransferPrepare                        1102.0        1102        1102         0.0           1
metricCenLedgerTransferTransfer                          3.0           3           3         0.0           1
metricConsumeProcessingTime                              0.6           0           2         0.7           7
metricConsumeRecursiveConsumeProcessingTime              0.0           0           0         0.0           3
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.1          95
metricConsumeSyncQueueProcessingTime                     2.3           2           3         0.5           3
metricConsumeSyncQueueResolveProcessingTime              0.3           0           1         0.5           3
metricConsumerConnectProcessingTime                    435.4         110        1364       416.1           7
metricProducerConnectProcessingTime                   1043.0        1043        1043         0.0           1
metricProducerSendMessageProcessingTime                  0.3           0           1         0.5           3
```
#### Golden-path Transfer-Prepare:
```bash
First request: 2018-07-13T07:36:08.501Z
Last request: 2018-07-13T07:36:11.027Z
Total number of lines in log file: 10
Number of unique matched entries: 1
Total difference of all requests in seconds: 2.526
Shortest response time in second: 2.526
Longest response time in second: 2.526
The average transaction in second: 2.526
Average transactions per second: 0.39588281868566905
```

### 2nd Run:

#### Ml-API-Adapter:
```bash
Performance Statistics   2018-07-13 09:30:00 - 2018-07-13 09:45:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              2.0           2           2         0.0           1
metricConsumeRecursiveConsumeProcessingTime              1.0           1           1         0.0           1
metricConsumeRecursiveProcessingTime                     0.0           0           0         0.0          30
metricConsumeSyncQueueProcessingTime                     7.0           7           7         0.0           1
metricConsumeSyncQueueResolveProcessingTime              1.0           1           1         0.0           1
metricConsumerConnectProcessingTime                    129.0         129         129         0.0           1
metricMlAPIConsumeMessage                               39.0          39          39         0.0           1
metricMlAPIConsumeMessageForEachMsg                     37.0          37          37         0.0           1
metricMlAPIProcessMessage                               37.0          37          37         0.0           1
metricMlAPIRoutePrepare                                218.0         218         218         0.0           1
metricMlAPIStartConsume                                137.0         137         137         0.0           1
metricProducerConnectProcessingTime                    214.0         214         214         0.0           1
metricProducerSendMessageProcessingTime                  1.0           1           1         0.0           1
```

#### Central-Ledger:
```bash
Performance Statistics   2018-07-13 09:30:00 - 2018-07-13 09:45:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCenLedgerCreateFulfilHandler                     515.0         515         515         0.0           1
metricCenLedgerCreateHandler                           441.9         199        1206       335.5           7
metricCenLedgerCreatePositionHandlers                  225.5         210         241        15.5           2
metricCenLedgerCreatePrepareHandler                    297.7         220         449       107.0           3
metricCenLedgerCreateRejectHandler                     491.0         491         491         0.0           1
metricCenLedgerCreateTransferHandler                  1206.0        1206        1206         0.0           1
metricCenLedgerPositions                                42.0          42          42         0.0           1
metricCenLedgerProduceMessage                           38.0           1         112        52.3           3
metricCenLedgerRegisterAllHandlers                    3166.0        3166        3166         0.0           1
metricCenLedgerRegisterAllPositionHandlers             458.0         458         458         0.0           1
metricCenLedgerRegisterAllTransferHandlers            2662.0        2662        2662         0.0           1
metricCenLedgerRegisterPositionHandlers                458.0         458         458         0.0           1
metricCenLedgerTransferPrepare                         199.0         199         199         0.0           1
metricCenLedgerTransferTransfer                          2.0           2           2         0.0           1
metricConsumeProcessingTime                              0.9           0           3         1.1           7
metricConsumeRecursiveConsumeProcessingTime              0.0           0           0         0.0           3
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2         114
metricConsumeSyncQueueProcessingTime                     4.0           2           6         1.6           3
metricConsumeSyncQueueResolveProcessingTime              0.3           0           1         0.5           3
metricConsumerConnectProcessingTime                    437.6         186        1205       337.7           7
metricProducerConnectProcessingTime                    109.0         109         109         0.0           1
metricProducerSendMessageProcessingTime                  0.7           0           1         0.5           3
```
#### Golden-path Transfer-Prepare:
```bash
First request: 2018-07-13T07:40:20.067Z
Last request: 2018-07-13T07:40:22.475Z
Total number of lines in log file: 10
Number of unique matched entries: 1
Total difference of all requests in seconds: 2.408
Shortest response time in second: 2.408
Longest response time in second: 2.408
The average transaction in second: 2.408
Average transactions per second: 0.4152823920265781
```
