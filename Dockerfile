FROM eclipse-temurin:17-jre

WORKDIR /server

ADD https://api.papermc.io/v2/projects/paper/versions/1.21.4/builds/416/downloads/paper-1.21.4-416.jar server.jar

COPY ./eula.txt .
COPY ./start.sh .

RUN chmod +x ./start.sh

EXPOSE 25565

CMD ["./start.sh"]
