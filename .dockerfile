FROM openjdk:18-jdk-alpine

WORKDIR /app

COPY target/classes /app
COPY src/main/resources /app/resources

EXPOSE 7070

CMD ["java", "-jar", "spring-crud.jar"]
