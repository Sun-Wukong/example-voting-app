FROM maven:3.6.1-jdk-8-slim
WORKDIR /app
COPY . .

RUN mvn package && \
    mv target/worker-jar-with-dependencies.jar /run/worker.jar && \
    rm -rf /app

EXPOSE 8080
CMD [ "java", "-jar", "/run/worker.jar" ]