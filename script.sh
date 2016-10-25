#!/bin/bash
apt-get update
apt-get remove scala-library scala
apt-get install wget -y
wget www.scala-lang.org/files/archive/scala-2.10.4.deb
dpkg -i scala-2.10.4.deb
apt-get -f install -y
apt-get update
apt-get install scala
echo "deb http://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
apt-get update
apt-get install sbt -y
cd ~
wget http://www-us.apache.org/dist/kafka/0.9.0.1/kafka_2.10-0.9.0.1.tgz
tar xzf kafka_2.10-0.9.0.1.tgz
cd kafka_2.10-0.9.0.1
bin/zookeeper-server-start.sh config/zookeeper.properties&
#bin/kafka-server-start.sh config/server.properties&
#bin/kafka-console-producer.sh --topic test --broker-list localhost:9092

