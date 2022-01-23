# the first stage of our build will use a maven 3.6.1 parent image
FROM maven:3.6.1-jdk-8-alpine AS MAVEN_BUILD

# copy the pom and src code to the container
COPY ./ ./

# package our application code
RUN mvn clean install

# the second stage of our build will use open jdk 8 on alpine 3.9
FROM openjdk:8-jre-alpine3.9

COPY --from=MAVEN_BUILD target/testapp-1.0-SNAPSHOT.jar /testapp.jar

# set the startup command to execute the jar
CMD ["java", "-cp", "/testapp.jar", "com.jaxws.endpoint.HelloWorldPublisher"]
