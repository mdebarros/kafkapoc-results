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
