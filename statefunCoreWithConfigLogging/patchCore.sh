#!/bin/bash

cp statefun-flink-core-3.3-SNAPSHOT.jar ../target
cd ../target
jar xf statefun-flink-core-3.3-SNAPSHOT.jar
jar uf flinkjob-1.0-SNAPSHOT.jar ./org