FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY target/hello-world-java-0.0.1-SNAPSHOT.jar /hello-world-java.jar

CMD ["/usr/bin/java", "-jar", "hello-world-java.jar"]