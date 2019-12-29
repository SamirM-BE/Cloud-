#!/bin/bash
# we run docker rmi and we gait it's pid in order to wait
cd back-end/
./build-image.sh & 
process_id=$!
wait $process_id
cd logging-service/
#we then deploy the docker swarm
docker stack deploy -c preference.yml preference
wait $!
#I can now scale every services in order to make sure to open 3 terminals to execute each command

echo "=========================================================================================================================="
echo "=========================================================================================================================="
echo "=====================================                  DOCKER                                ============================="
echo "======================================                   IS                                 =============================="
echo "=======================================                 READY                              ==============================="
echo "=========================================================================================================================="
echo "=========================================================================================================================="



