FROM openjdk:22-slim-bullseye
COPY target/petclinic.jar petclinic.jar
EXPOSE 8080
CMD  java -jar petclinic.jar