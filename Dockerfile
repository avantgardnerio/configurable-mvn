FROM maven:3.6.0-jdk-8

ADD settings.xml /root/.m2/settings.xml
ADD run.sh /run.sh
