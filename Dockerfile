FROM openjdk:latest
VOLUME /tmp
EXPOSE 8080

ARG JAR_FILE=./health_pgi-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]
