FROM openjdk:11

WORKDIR ./

CMD ["./gradlew", "clean", "bootJar"]
COPY build/libs/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "/app.jar"]
