FROM openjdk:17
ARG JAR_FILE=target*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["nohup", "java", "-jar", "app.jar", ">", "app.log", "2>&1", "&"]
