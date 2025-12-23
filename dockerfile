FROM openjdk:17-jdk-slim
WORKDIR /app
COPY src /app/src
RUN javac src/*.java
CMD ["java", "-cp", "src", "Main"]
