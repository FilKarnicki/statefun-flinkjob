FROM flink:latest

COPY target/flinkjob-1.0-SNAPSHOT.jar /tmp
COPY statefunCoreWithConfigLogging/statefun-flink-core-3.3-SNAPSHOT.jar /tmp

RUN apt update && apt install -y openjdk-11-jdk
RUN cd /tmp && jar xf statefun-flink-core-3.3-SNAPSHOT.jar && jar uf flinkjob-1.0-SNAPSHOT.jar ./org