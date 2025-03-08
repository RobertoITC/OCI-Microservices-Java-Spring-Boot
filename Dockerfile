FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-a01642426
COPY /target/*.jar oci-microservice-a01642426.jar
COPY /src/main/resources/Wallet_javadev101-1 /oci-microservice-a01642426/Wallet_javadev101-1
ENV TNS_ADMIN=/oci-microservice-a01642426/Wallet_javadev101-1
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-microservice-a01642426.jar" ]