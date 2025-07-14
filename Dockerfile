FROM openjdk:21-jdk-slim
WORKDIR /app
COPY build/libs/project.jar .
EXPOSE 9000
CMD ["java", "-jar", "project.jar"] 