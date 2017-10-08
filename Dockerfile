FROM frolvlad/alpine-oraclejdk8:slim

EXPOSE 8080

ADD target/hello-world-java-0.0.1-SNAPSHOT.jar hello-world-java.jar

RUN sh -c 'touch /hello-world-java.jar'

ENTRYPOINT [ "sh", "-c", "java -jar /hello-world-java.jar" ]