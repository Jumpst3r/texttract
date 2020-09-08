#!/bin/sh
serverAddr=${1}
# Install method
printf "installing method... \n"
curl -X POST -H "Content-Type: application/json" -d @install.json http://${serverAddr}:8080/algorithms
# Wait for method to install
sleep 5
# Upload test data
printf "uploading test data... \n"
curl -X POST -H "Content-Type: application/json" -d @upload.json http://${serverAddr}:8080/collections
sleep 3
printf "running algorithm... \n"
curl -X POST -H "Content-Type: application/json" -d @run.json http://${serverAddr}:8080/text-processing/textract/1
