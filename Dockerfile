FROM openjdk:11-jdk-slim

WORKDIR /app

COPY ./target/g1-0.0.1-SNAPSHOT.jar /app/project.jar

EXPOSE 8080

CMD ["java", "-jar", "project.jar"]

