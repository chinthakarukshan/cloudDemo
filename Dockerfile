FROM ubuntu:latest
MAINTAINER <chinthakarukshan@gmail.com>

#EXPOSE 4567

WORKDIR /opt

RUN 	apt-get update && apt-get install -y wget && \
	wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz &&\
	tar -xvf jdk-8u131-linux-x64.tar.gz && \
	rm jdk-8u131-linux-x64.tar.gz && \
	update-alternatives --install "/usr/bin/java" "java" "/opt/jdk1.8.0_131/bin/java" 1 && \
	update-alternatives --install "/usr/bin/javac" "javac" "/opt/jdk1.8.0_131/bin/java" 1

ENV JAVA_HOME=/opt/jdk1.8.0_131	



RUN mkdir /app


COPY target/cloud-docker-project-1.0-SNAPSHOT.jar /app/cloud-docker-project-1.0-SNAPSHOT.jar

CMD ["java", "-jar", "/app/cloud-docker-project-1.0-SNAPSHOT.jar"]
