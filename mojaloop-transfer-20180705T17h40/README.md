### 20180705T17h40:

Note the tests below are only applicable to the Transfer Prepare process.

The timings are from when the ml-api-adapter receives the prepare request until it receives notifications, and completes the callback.

#### Setup

1. Run mock-server for callbacks and set the mock-server expectation:
- `docker stop mockserver; docker rm mockserver; docker run --name mockserver -d -p 1080:1080 jamesdbloom/mockserver; sleep 5; docker run --rm --network host byrnedo/alpine-curl -X PUT "http://localhost:1080/expectation" -d '{ "httpRequest": { "method": "POST", "path": "/transfers" }, "httpResponse": { "statusCode": 200, "body": "{}" } }'; docker run --rm --network host byrnedo/alpine-curl -X PUT "http://localhost:1080/expectation" -d '{ "httpRequest": { "method": "PUT", "path": "/transfers" }, "httpResponse": { "statusCode": 200, "body": "{}" } }'; docker run --rm --network host byrnedo/alpine-curl -X PUT "http://localhost:1080/expectation" -d '{ "httpRequest": { "method": "POST", "path": "/transfers/error" }, "httpResponse": { "statusCode": 200, "body": "{}" } }'; docker run --rm --network host byrnedo/alpine-curl -X PUT "http://localhost:1080/expectation" -d '{ "httpRequest": { "method": "PUT", "path": "/transfers/error" }, "httpResponse": { "statusCode": 200, "body": "{}" } }'`
- Refer to [mock-server.com](http://www.mock-server.com/where/docker.html) for more information if required.

2. Run Kafka
- See `perfRestartKafka.sh` from the KafkaPoC [README.md](https://github.com/mdebarros/kafkapoc/blob/master/README.md#3-scripts)

3. Run MySQL
- `DBUSER=central_ledger; DBPASS=password; SLEEPTIME=15; docker stop mysql; docker rm mysql; docker run -p 3306:3306 -d --name mysql -e MYSQL_USER=$DBUSER -e MYSQL_PASSWORD=$DBPASS -e MYSQL_DATABASE=$DBUSER -e MYSQL_ALLOW_EMPTY_PASSWORD=true mysql/mysql-server; sleep $SLEEPTIME; docker exec -it mysql mysql -uroot -e "ALTER USER '$DBUSER'@'%' IDENTIFIED WITH mysql_native_password BY '$DBPASS';"`


#### Single Transaction Runs:

##### Default Configuration:

1st run
- First request: `2018-07-05T16:56:15.498Z`
- Last request: `2018-07-05T16:56:22.408Z`
- Total number of lines in log file: `10`
- Number of unique matched entries: `1`
- Total difference of all requests in seconds: `6.91`
- Shortest response time in second: `6.91`
- Longest response time in second: `6.91`
- The average transaction in second: `6.91`
- Average transactions per second: `0.1447178002894356`

2nd run:
- First request: `2018-07-06T13:21:46.214Z`
- Last request: `2018-07-06T13:21:53.982Z`
- Total number of lines in log file: `10`
- Number of unique matched entries: `1`
- Total difference of all requests in seconds: `7.768`
- Shortest response time in second: `7.768`
- Longest response time in second: `7.768`
- The average transaction in second: `7.768`
- Average transactions per second: `0.12873326467559218`


##### Optimised Configuration:
<insert>

Analysis:
- tbd

#### Multiple Transaction Runs:

##### Default Configuration:
<insert>

##### Optimised Configuration:
<insert>

Analysis:
- tbd

#### Findings:
- tbd

#### Recommendation:
- tbd
