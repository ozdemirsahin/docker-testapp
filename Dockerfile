FROM openjdk:8-jre-alpine3.9

# copy the packaged jar file into our docker image
COPY target/testapp-1.0-SNAPSHOT.jar /testapp.jar

# set the startup command to execute the jar
CMD ["java", "-cp", "/testapp.jar", "com.jaxws.endpoint.HelloWorldPublisher"]

