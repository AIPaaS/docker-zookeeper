# docker-zookeeper

# run cluster command like:
docker run -d --net=host -p 29181:29181 -p 20888:20888 -p 30888:30888 -e "ZK_PORT=29181" -e "SERVER_ID=1" -e "SERVER_1=server.1=10.1.245.5:20888:30888" -e "SERVER_2=server.2=10.1.245.6:20888:30888" -e "SERVER_3=server.3=10.1.245.7:20888:30888" 10.1.245.4:5000/zookeeper-3.4.8:0.1

docker run -d --net=host -p 29181:29181 -p 20888:20888 -p 30888:30888 -e "ZK_PORT=29181" -e "SERVER_ID=2" -e "SERVER_1=server.1=10.1.245.5:20888:30888" -e "SERVER_2=server.2=10.1.245.6:20888:30888" -e "SERVER_3=server.3=10.1.245.7:20888:30888" 10.1.245.4:5000/zookeeper-3.4.8:0.1

docker run -d --net=host -p 29181:29181 -p 20888:20888 -p 30888:30888 -e "ZK_PORT=29181" -e "SERVER_ID=3" -e "SERVER_1=server.1=10.1.245.5:20888:30888" -e "SERVER_2=server.2=10.1.245.6:20888:30888" -e "SERVER_3=server.3=10.1.245.7:20888:30888" 10.1.245.4:5000/zookeeper-3.4.8:0.1

# run single command like:
docker run -d --net=host -p 20281:20281 -e "ZK_PORT=20281" -e "SERVER_ID=1" -e "SERVER_1=server.1=10.1.245.5:20282:20283" 10.1.245.4:5000/zookeeper-3.4.8:0.1
