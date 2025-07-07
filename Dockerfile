# Use an official Maven image with JDK 11
FROM maven:3.8.6-openjdk-11

# Set the working directory
WORKDIR /app

# Copy the Maven project files
COPY . /app

# Package the application
RUN mvn clean package

# Run the application
CMD ["java", "-jar", "target/my-app-1.0-SNAPSHOT.jar"]
