FROM ubuntu:18.04

RUN apt-get update && apt-get -y install curl

RUN apt-get update && apt-get -y install cron

COPY start-crone /etc/cron.d/start-crone
RUN crontab /etc/cron.d/start-crone
RUN touch /var/log/cron.log
RUN chmod 777 /etc/cron.d/start-crone

RUN apt-get install -y openjdk-8-jdk
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV PATH $PATH:$JAVA_HOME/bin

RUN curl -O https://www-us.apache.org/dist/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz
RUN tar xvf spark-2.4.4-bin-hadoop2.7.tgz
ENV PATH $PATH:$SPARK_HOME/bin

COPY Extractor.jar /
COPY start-spark.sh /
RUN chmod 777 start-spark.sh

CMD ["cron", "-f"]