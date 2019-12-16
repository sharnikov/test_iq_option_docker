FROM ubuntu:18.04

RUN apt-get update && apt-get -y install curl

# JAVA         
RUN apt-get install -y openjdk-8-jdk
ENV JAVA_HOME /usr/local/jdk1.8.0_121
ENV PATH $PATH:$JAVA_HOME/bin

# SPARK
RUN curl -O https://www-us.apache.org/dist/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz
RUN tar xvf spark-2.4.4-bin-hadoop2.7.tgz

ENV SPARK_HOME /usr/local/spark-2.4.4-bin-hadoop2.7
ENV PATH $PATH:$SPARK_HOME/bin


COPY Extractor.jar /
RUN ls -l spark-2.4.4-bin-hadoop2.7/bin 

RUN ls -l 

RUN ./spark-2.4.4-bin-hadoop2.7/bin/spark-submit \
  --class test.option.iq.Extractor \
  --master local[*] \
  Extractor.jar