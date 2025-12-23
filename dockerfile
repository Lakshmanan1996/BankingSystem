# Old (invalid)
FROM openjdk:17-jdk-slim

# Fixed (valid)
FROM openjdk:17-jdk-slim-bullseye

# Continue with your app
WORKDIR /app
COPY . .
RUN javac -d bin $(find src -name "*.java")
CMD ["java", "-cp", "bin", "com.yourpackage.Main"]
