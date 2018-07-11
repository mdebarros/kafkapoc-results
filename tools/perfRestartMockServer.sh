#!/usr/bin/env bash
echo "---------------------------------------------------------------------"
echo "Starting MockServer Restart Script..."
echo "---------------------------------------------------------------------"
echo

echo "Loading env vars..."
source perfEnv.sh

echo
echo "---------------------------------------------------------------------"
echo " Creating MockServer Instance"
echo "---------------------------------------------------------------------"
echo "Destroying MockServer ${MOCKSERVER_ID}"

docker stop $MOCKSERVER_ID
docker rm $MOCKSERVER_ID

echo "Starting Docker ${MOCKSERVER_ID}"
docker run --name ${MOCKSERVER_ID} -d -p 1080:1080 jamesdbloom/mockserver;

echo
echo "Sleeping for ${SLEEP_FACTOR_IN_SECONDS}s for ${MOCKSERVER_ID} startup..."
sleep $SLEEP_FACTOR_IN_SECONDS
echo

echo
echo "Configuring expectation for POST /transfers"
docker run --rm --network host byrnedo/alpine-curl -X PUT "http://localhost:1080/expectation" -d '{ "httpRequest": { "method": "POST", "path": "/transfers" }, "httpResponse": { "statusCode": 200, "body": "{}" } }';

echo
echo "Configuring expectation for PUT /transfers"
docker run --rm --network host byrnedo/alpine-curl -X PUT "http://localhost:1080/expectation" -d '{ "httpRequest": { "method": "PUT", "path": "/transfers" }, "httpResponse": { "statusCode": 200, "body": "{}" } }';

echo
echo "Configuring expectation for POST /transfers/error"
docker run --rm --network host byrnedo/alpine-curl -X PUT "http://localhost:1080/expectation" -d '{ "httpRequest": { "method": "POST", "path": "/transfers/error" }, "httpResponse": { "statusCode": 200, "body": "{}" } }';

echo
echo "Configuring expectation for PUT /transfers/error"
docker run --rm --network host byrnedo/alpine-curl -X PUT "http://localhost:1080/expectation" -d '{ "httpRequest": { "method": "PUT", "path": "/transfers/error" }, "httpResponse": { "statusCode": 200, "body": "{}" } }';

echo "${MOCKSERVER_ID} ready to accept requests..."
