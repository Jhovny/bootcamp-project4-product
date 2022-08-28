FROM openjdk:12-jdk
MAINTAINER bootcamp.nttdata.com.pe
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} product.jar
ENTRYPOINT ["java","-jar","/product.jar"]