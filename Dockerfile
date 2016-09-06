FROM centos:7

RUN yum install -y java-1.8.0-openjdk

ADD zookeeper-3.4.8.tar.gz /opt/

RUN mv /opt/zookeeper-3.4.8 /opt/zookeeper \
    && cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg \
    && mkdir -p /opt/zookeeper/data 

ADD ./zk_start.sh /zk_start.sh
RUN chmod 777 /zk_start.sh

WORKDIR /opt/zookeeper

VOLUME ["/opt/zookeeper/conf", "/opt/zookeeper/data"]

CMD ["/zk_start.sh"]
