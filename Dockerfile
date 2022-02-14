#Primera Etapa
FROM openjdk:11.0-jdk-slim-stretch

RUN apt-get install -y tzdata

ENV TZ America/Mexico_City

ADD target/docker-jenkins-integration-sample.jar docker-jenkins-integration-sample.jar
ENTRYPOINT ["java","-jar","/docker-jenkins-integration-sample.jar"]