FROM openjdk:17

EXPOSE 8089

ARG JAR_FILE=target/deployment-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar

ENTRYPOINT exec jave -jar /app.jar