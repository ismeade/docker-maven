FROM ismeade/java:openjdk8-jre-alpine

MAINTAINER ismeade <ismeade99@sina.com>

ENV MAVEN_HOME=/usr/local/maven/ \
    PATH=$PATH:/usr/local/maven/bin

