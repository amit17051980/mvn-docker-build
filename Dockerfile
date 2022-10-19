FROM openjdk:11
MAINTAINER "Amit Gupta"

WORKDIR /usr/src/myapp

ADD target/mvn-docker-build-1.0.jar /usr/src/myapp/myservice.jar
ENTRYPOINT ["java", "-jar", "/usr/src/myapp/myservice.jar"]

EXPOSE 8080

