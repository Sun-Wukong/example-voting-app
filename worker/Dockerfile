FROM maven/maven:3.6.1-jdk-8-slim
WORKDIR /app
ADD . .

RUN mvn package && \
    mv target/worker-with-dependencies.jar /run/worker.jar && \
    rm -rf /app

EXPOSE 8080
CMD [ "java", "-jar /run/worker.jar" ]