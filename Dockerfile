FROM ismeade/java:openjdk8-jre-alpine

MAINTAINER ismeade <ismeade99@sina.com>

ENV MAVEN_HOME=/usr/local/maven/ \
    PATH=$PATH:/usr/local/maven/bin

RUN apk add --no-cache curl && \
    curl -o /apache-maven-3.5.0-bin.tar.gz http://mirror.bit.edu.cn/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz && \
    tar -zxvf apache-maven-3.5.0-bin.tar.gz && \
    mv /apache-maven-3.5.0 $MAVEN_HOME && \
    rm -f /apache-maven-3.5.0-bin.tar.gz && \
    apk del curl

CMD ["mvn", "-version"]
