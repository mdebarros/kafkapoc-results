# 20180711T17h00

## Use Case 1 - Base-line

### Testing Parameters:
- Batch Size: 1000
- Commit Sync Enabled: True

### 1st Run:

#### Producer:
```bash
Performance Statistics   2018-07-11 17:00:00 - 2018-07-11 17:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricProducerConnectProcessingTime                    127.0         127         127         0.0           1
metricProducerSendMessageProcessingTime                  0.1           0           2         0.3        1000
metricTimeProducerForLoop                              689.0         689         689         0.0           1
```

#### Consumer:
```bash
Performance Statistics   2018-07-11 17:00:00 - 2018-07-11 17:15:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCommitMessageSyncProcessingTime                    2.9           1          60         2.7        1000
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              5.6           2          23         5.9          10
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2          35
metricConsumeSyncQueueProcessingTime                   360.9         268         600        92.9          10
metricConsumeSyncQueueResolveProcessingTime              0.4           0           2         0.7          10
metricConsumerConnectProcessingTime                    163.0         163         163         0.0           1
metricEndOfCallBack                                    359.5         267         593        91.3          10
metricOfPerfObsCallBackConsumerFunction                359.7         267         594        91.6          10
metricTimeDiffFromDropoffToEnd                        2259.9         422        3600       897.4        1000
metricTimeDiffFromMessageSendToDropoff                   0.4           0           3         0.5        1000
metricTimeDiffFromMessageSendToEnd                    2260.2         425        3601       897.4        1000
```

#### End-to-end:
```bash
First request: 2018-07-11T15:06:59.275Z
Last request: 2018-07-11T15:07:03.563Z
Total number of lines in log file: 2000
Number of unique matched entries: 1000
Total difference of all requests in seconds: 4.288
Shortest response time in second: 0.425
Longest response time in second: 3.601
The average transaction in second: 2.260241
Average transactions per second: 233.2089552238806
```

## 2nd Run:

#### Producer:
```bash
Performance Statistics   2018-07-11 17:15:00 - 2018-07-11 17:30:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricProducerConnectProcessingTime                    127.0         127         127         0.0           1
metricProducerSendMessageProcessingTime                  0.1           0           2         0.3        1000
metricTimeProducerForLoop                              583.0         583         583         0.0           1
```
#### Consumer:
```bash
Performance Statistics   2018-07-11 17:15:00 - 2018-07-11 17:30:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricCommitMessageSyncProcessingTime                    3.3           1          29         2.2        1000
metricConsumeProcessingTime                              2.0           2           2         0.0           1
metricConsumeRecursiveConsumeProcessingTime              3.8           2           6         1.0          10
metricConsumeRecursiveProcessingTime                     0.1           0           1         0.3          26
metricConsumeSyncQueueProcessingTime                   403.7         328         578        68.8          10
metricConsumeSyncQueueResolveProcessingTime              0.4           0           2         0.7          10
metricConsumerConnectProcessingTime                    138.0         138         138         0.0           1
metricEndOfCallBack                                    402.0         326         577        69.5          10
metricOfPerfObsCallBackConsumerFunction                402.2         327         577        69.3          10
metricTimeDiffFromDropoffToEnd                        2115.4         310        4028      1113.4        1000
metricTimeDiffFromMessageSendToDropoff                   0.3           0           4         0.5        1000
metricTimeDiffFromMessageSendToEnd                    2115.7         314        4029      1113.4        1000
```

#### End-to-end
```bash
First request: 2018-07-11T15:19:46.162Z
Last request: 2018-07-11T15:19:50.773Z
Total number of lines in log file: 2000
Number of unique matched entries: 1000
Total difference of all requests in seconds: 4.611
Shortest response time in second: 0.315
Longest response time in second: 4.029
The average transaction in second: 2.115747
Average transactions per second: 216.87269572760792
```

## Use Case 2 - Disabling Commits

### Testing Parameters:
- Batch Size: 1000
- Commit Sync Enabled: False _(manually commented out the commit lines in the consumer)_

### 1st Run:

#### Producer:
```bash
Performance Statistics   2018-07-12 09:45:00 - 2018-07-12 10:00:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricProducerConnectProcessingTime                    133.0         133         133         0.0           1
metricProducerSendMessageProcessingTime                  0.1           0           4         0.4        1000
metricTimeProducerForLoop                              714.0         714         714         0.0           1
```

#### Consumer:
```bash
Performance Statistics   2018-07-12 09:45:00 - 2018-07-12 10:00:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              4.4           3           5         0.7          10
metricConsumeRecursiveProcessingTime                     0.1           0           1         0.3          31
metricConsumeSyncQueueProcessingTime                    66.4          42          85        11.3          10
metricConsumeSyncQueueResolveProcessingTime              0.8           0           2         0.6          10
metricConsumerConnectProcessingTime                    136.0         136         136         0.0           1
metricEndOfCallBack                                     64.9          42          79        10.4          10
metricOfPerfObsCallBackConsumerFunction                 64.9          41          79        10.6          10
metricTimeDiffFromDropoffToEnd                         706.9         368        1015       198.2        1000
metricTimeDiffFromMessageSendToDropoff                   0.4           0           5         0.5        1000
metricTimeDiffFromMessageSendToEnd                     707.3         369        1015       198.2        1000
```

#### End-to-end:
```bash
First request: 2018-07-12T07:46:20.437Z
Last request: 2018-07-12T07:46:22.121Z
Total number of lines in log file: 2000
Number of unique matched entries: 1000
Total difference of all requests in seconds: 1.684
Shortest response time in second: 0.369
Longest response time in second: 1.015
The average transaction in second: 0.707335
Average transactions per second: 593.8242280285036
```

## 2nd Run:

#### Producer:
```bash
Performance Statistics   2018-07-12 09:45:00 - 2018-07-12 10:00:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricProducerConnectProcessingTime                    150.0         150         150         0.0           1
metricProducerSendMessageProcessingTime                  0.1           0           3         0.3        1000
metricTimeProducerForLoop                              637.0         637         637         0.0           1
```
#### Consumer:
```bash
Performance Statistics   2018-07-12 09:45:00 - 2018-07-12 10:00:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              4.5           2           7         1.4          10
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2          37
metricConsumeSyncQueueProcessingTime                    65.5          39          90        13.2          10
metricConsumeSyncQueueResolveProcessingTime              0.3           0           1         0.5          10
metricConsumerConnectProcessingTime                    161.0         161         161         0.0           1
metricEndOfCallBack                                     64.1          39          90        12.8          10
metricOfPerfObsCallBackConsumerFunction                 64.3          39          89        12.7          10
metricTimeDiffFromDropoffToEnd                         679.5         355         875       164.4        1000
metricTimeDiffFromMessageSendToDropoff                   0.3           0           4         0.5        1000
metricTimeDiffFromMessageSendToEnd                     679.8         355         875       164.5        1000
```

#### End-to-end
```bash
First request: 2018-07-12T07:55:46.305Z
Last request: 2018-07-12T07:55:47.777Z
Total number of lines in log file: 2000
Number of unique matched entries: 1000
Total difference of all requests in seconds: 1.472
Shortest response time in second: 0.355
Longest response time in second: 0.875
The average transaction in second: 0.679826
Average transactions per second: 679.3478260869565
```

## Use Case 3 - Auto-Commit

### Testing Parameters:
- Batch Size: 1000
- Commit Sync Enabled: False _(manually commented out the commit lines in the consumer)_
- Auto-commit enabled _(see config.json)_
- Auto-commit-internal-ms: 5000 _(default)_ _(see config.json)_

### 1st Run:

#### Producer:
```bash
Performance Statistics   2018-07-12 10:15:00 - 2018-07-12 10:30:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricProducerConnectProcessingTime                    228.0         228         228         0.0           1
metricProducerSendMessageProcessingTime                  0.2           0           4         0.4        1000
metricTimeProducerForLoop                              878.0         878         878         0.0           1
```

#### Consumer:
```bash
Performance Statistics   2018-07-12 10:15:00 - 2018-07-12 10:30:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              3.0           3           3         0.0           1
metricConsumeRecursiveConsumeProcessingTime              4.6           3           6         1.0          10
metricConsumeRecursiveProcessingTime                     0.1           0           1         0.3          32
metricConsumeSyncQueueProcessingTime                    72.1          42          95        15.6          10
metricConsumeSyncQueueResolveProcessingTime              0.5           0           2         0.7          10
metricConsumerConnectProcessingTime                    132.0         132         132         0.0           1
metricEndOfCallBack                                     70.4          41          93        15.2          10
metricOfPerfObsCallBackConsumerFunction                 70.7          41          94        15.4          10
metricTimeDiffFromDropoffToEnd                         417.3         151         589       142.0        1000
metricTimeDiffFromMessageSendToDropoff                   0.4           0           4         0.5        1000
metricTimeDiffFromMessageSendToEnd                     417.8         151         589       142.0        1000
```

#### End-to-end:
```bash
First request: 2018-07-12T08:19:44.803Z
Last request: 2018-07-12T08:19:46.158Z
Total number of lines in log file: 2000
Number of unique matched entries: 1000
Total difference of all requests in seconds: 1.355
Shortest response time in second: 0.151
Longest response time in second: 0.589
The average transaction in second: 0.41779
Average transactions per second: 738.0073800738007
```

## 2nd Run:

#### Producer:
```bash
Performance Statistics   2018-07-12 10:15:00 - 2018-07-12 10:30:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricProducerConnectProcessingTime                    129.0         129         129         0.0           1
metricProducerSendMessageProcessingTime                  0.1           0           2         0.3        1000
metricTimeProducerForLoop                              688.0         688         688         0.0           1
```
#### Consumer:
```bash
Performance Statistics   2018-07-12 10:15:00 - 2018-07-12 10:30:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              4.3           3           6         1.2          10
metricConsumeRecursiveProcessingTime                     0.1           0           1         0.3          37
metricConsumeSyncQueueProcessingTime                    69.1          41          93        16.0          10
metricConsumeSyncQueueResolveProcessingTime              0.5           0           2         0.7          10
metricConsumerConnectProcessingTime                    140.0         140         140         0.0           1
metricEndOfCallBack                                     67.3          41          91        15.3          10
metricOfPerfObsCallBackConsumerFunction                 67.8          40          91        15.7          10
metricTimeDiffFromDropoffToEnd                         698.6         363         906       174.7        1000
metricTimeDiffFromMessageSendToDropoff                   0.4           0           5         0.5        1000
metricTimeDiffFromMessageSendToEnd                     699.0         364         906       174.7        1000
```

#### End-to-end
```bash
First request: 2018-07-12T08:23:02.422Z
Last request: 2018-07-12T08:23:03.952Z
Total number of lines in log file: 2000
Number of unique matched entries: 1000
Total difference of all requests in seconds: 1.53
Shortest response time in second: 0.364
Longest response time in second: 0.906
The average transaction in second: 0.699035
Average transactions per second: 653.59477124183
```

## Use Case 4 - Auto-Commit with reduced Auto-Commit-Interval

### Testing Parameters:
- Batch Size: 1000
- Commit Sync Enabled: False _(manually commented out the commit lines in the consumer)_
- Auto-commit enabled _(see config.json)_
- Auto-commit-internal-ms: 200 _(see config.json)_

### 1st Run:

#### Producer:
```bash
Performance Statistics   2018-07-12 10:15:00 - 2018-07-12 10:30:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricProducerConnectProcessingTime                    127.0         127         127         0.0           1
metricProducerSendMessageProcessingTime                  0.1           0           3         0.3        1000
metricTimeProducerForLoop                              660.0         660         660         0.0           1
```

#### Consumer:
```bash
Performance Statistics   2018-07-12 10:15:00 - 2018-07-12 10:30:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              1.0           1           1         0.0           1
metricConsumeRecursiveConsumeProcessingTime              4.1           2           6         1.3          10
metricConsumeRecursiveProcessingTime                     0.0           0           1         0.2          41
metricConsumeSyncQueueProcessingTime                    65.3          40          95        18.7          10
metricConsumeSyncQueueResolveProcessingTime              0.3           0           1         0.5          10
metricConsumerConnectProcessingTime                    144.0         144         144         0.0           1
metricEndOfCallBack                                     63.6          40          93        17.8          10
metricOfPerfObsCallBackConsumerFunction                 63.8          40          93        17.8          10
metricTimeDiffFromDropoffToEnd                         770.6         375         981       198.1        1000
metricTimeDiffFromMessageSendToDropoff                   0.4           0           4         0.5        1000
metricTimeDiffFromMessageSendToEnd                     770.9         376         982       198.2        1000
```

#### End-to-end:
```bash
First request: 2018-07-12T08:29:00.695Z
Last request: 2018-07-12T08:29:02.277Z
Total number of lines in log file: 2000
Number of unique matched entries: 1000
Total difference of all requests in seconds: 1.582
Shortest response time in second: 0.376
Longest response time in second: 0.982
The average transaction in second: 0.770934
Average transactions per second: 632.1112515802781
```

## 2nd Run:

#### Producer:
```bash
Performance Statistics   2018-07-12 10:30:00 - 2018-07-12 10:45:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricProducerConnectProcessingTime                    127.0         127         127         0.0           1
metricProducerSendMessageProcessingTime                  0.1           0           2         0.4        1000
metricTimeProducerForLoop                              690.0         690         690         0.0           1
```
#### Consumer:
```bash
Performance Statistics   2018-07-12 10:30:00 - 2018-07-12 10:45:00
Tag                                                  Avg(ms)         Min         Max     Std Dev       Count
metricConsumeProcessingTime                              2.0           2           2         0.0           1
metricConsumeRecursiveConsumeProcessingTime              4.6           3           7         1.4          10
metricConsumeRecursiveProcessingTime                     0.1           0           1         0.3          29
metricConsumeSyncQueueProcessingTime                    71.1          49          94        13.0          10
metricConsumeSyncQueueResolveProcessingTime              0.3           0           2         0.6          10
metricConsumerConnectProcessingTime                    153.0         153         153         0.0           1
metricEndOfCallBack                                     69.0          47          91        12.8          10
metricOfPerfObsCallBackConsumerFunction                 69.2          48          91        12.5          10
metricTimeDiffFromDropoffToEnd                         754.1         344        1039       233.7        1000
metricTimeDiffFromMessageSendToDropoff                   0.3           0           5         0.5        1000
metricTimeDiffFromMessageSendToEnd                     754.5         344        1040       233.7        1000
```

#### End-to-end
```bash
First request: 2018-07-12T08:31:40.506Z
Last request: 2018-07-12T08:31:42.204Z
Total number of lines in log file: 2000
Number of unique matched entries: 1000
Total difference of all requests in seconds: 1.698
Shortest response time in second: 0.344
Longest response time in second: 1.04
The average transaction in second: 0.75451
Average transactions per second: 588.9281507656066
```
