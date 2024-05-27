
FROM openjdk:17
WORKDIR /app
RUN: mvn clean package -DskipTests
COPY ./target/deployment-0.0.1-SNAPSHOT.jar .
EXPOSE 8089
CMD ["java", "-jar", "deployment-0.0.1-SNAPSHOT.jar"]
