# Use an official OpenJDK image as a base
FROM eclipse-temurin:24-jdk-alpine
RUN apk update && apk add --no-cache curl

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY ./PDF-Microservices-Eukrea/target/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]
