FROM maven:3.9-amazoncorretto-21-al2023 AS build
WORKDIR /usr/app
COPY . /usr/app
RUN mvn -DskipTests install

FROM openjdk:22-oraclelinux8

COPY --from=build /usr/app/target/spring-petclinic-3.1.0-SNAPSHOT.jar /
EXPOSE 8080
CMD ['java', '-jar', 'petclinic.jar']

# FROM eclipse-temurin
# RUN apt-get update && apt-get install maven -y
# COPY --from=build . /app
# EXPOSE 8080
# CMD mvn spring-boot:run
