FROM openjdk:8
EXPOSE 8083
ADD target/devops-integration.jar devops-integration.jar
ENTRYPOINT["java", "-jar", "devops-integration.jar"]