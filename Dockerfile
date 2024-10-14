# Base image
FROM openjdk:21-jdk-slim

# Copy across build
COPY build/libs/BigDataProject-0.0.1-SNAPSHOT.jar app.jar

# Set entry point
ENTRYPOINT [ "java", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005", "-jar", "app.jar" ]
