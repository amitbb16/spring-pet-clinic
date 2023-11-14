FROM maven:3.9-amazoncorretto-21-al2023 AS build
WORKDIR /app
COPY . /app
RUN mvn install
EXPOSE 8080
CMD ['java', '-jar', 'petclinic.jar']

# FROM eclipse-temurin
# RUN apt-get update && apt-get install maven -y
# COPY --from=build . /app
# EXPOSE 8080
# CMD mvn spring-boot:run