FROM openjdk:8-jdk
MAINTAINER <chinthakarukshan@gmail.com>

EXPOSE 4567

VOLUME /data

COPY target/cloud-docker-project-1.0-SNAPSHOT.jar /app/cloud-docker-project-1.0-SNAPSHOT.jar

CMD ["java", "-jar", "/app/cloud-docker-project-1.0-SNAPSHOT.jar"]
