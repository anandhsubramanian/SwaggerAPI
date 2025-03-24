# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Check if the JAR file exists before copying
ARG JAR_FILE=build/libs/SwaggerAPI-0.0.1.jar
RUN if [ ! -f "$JAR_FILE" ]; then echo "ERROR: $JAR_FILE not found!"; exit 1; fi

# Copy the JAR file into the image
COPY ${JAR_FILE} app.jar
# Expose port 8080 to the outside world
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
