FROM openjdk:21-jdk-slim
MAINTAINER "osman@osman.com"

WORKDIR /spring_proj
COPY ./target/spring-proj-1.0.0.jar spring-proj-1.0.0.jar

ENV LOCAL_PORT=8080

ENTRYPOINT ["sh","-c","java -DMY_PORT=${LOCAL_PORT} -jar spring-proj-1.0.0.jar"]