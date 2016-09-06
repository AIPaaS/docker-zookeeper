#!/bin/sh
ZOO_CFG="/opt/zookeeper/conf/zoo.cfg"

# Output server ID
echo "server id (myid): ${SERVER_ID}"
echo "${SERVER_ID}" > /opt/zookeeper/data/myid

# Add additional ZooKeeper servers into the zoo.cfg file
echo "${SERVER_1}" >> ${ZOO_CFG}
echo "${SERVER_2}" >> ${ZOO_CFG}
echo "${SERVER_3}" >> ${ZOO_CFG}

sed -i "s/clientPort=2181/clientPort=${ZK_PORT}/g" ${ZOO_CFG}

# Start Zookeeper
/opt/zookeeper/bin/zkServer.sh start-foreground
