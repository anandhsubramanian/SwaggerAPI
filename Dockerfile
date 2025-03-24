# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
ARG JAR_FILE=build/libs/SwaggerAPI-0.0.1.jar

COPY ${JAR_FILE} app.jar
# Expose port 8080 to the outside world
EXPOSE 8080
# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
