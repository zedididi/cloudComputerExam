FROM ubuntu:latest

MAINTAINER  zediliu@outlook.com

# install  git,openjdk 
RUN apt-get update && apt-get install -y  openjdk-8-jdk  git

# set environment variable
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 
WORKDIR /home

# install web file
RUN mkdir -p /home/webFile 

COPY mysql-cassandra-springboot-test-0.0.1-SNAPSHOT.jar /home/webFile

WORKDIR /home/webFile

EXPOSE 80
EXPOSE 8080

CMD [ "java", "-jar","/home/webFile/mysql-cassandra-springboot-test-0.0.1-SNAPSHOT.jar"]