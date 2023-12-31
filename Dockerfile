FROM openjdk:17-oracle
CMD ["./mvnw", "clean", "package"]
ARG JAR_FILE_PATH=./*-SNAPSHOT.jar
COPY ${JAR_FILE_PATH} app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
