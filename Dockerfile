FROM eclipse-temurin:21-jre

WORKDIR /server

ADD https://github.com/Pernoise/Minecraft-server/releases/download/gg/paper-1.21.4-232.jar server.jar

COPY ./eula.txt .
COPY ./start.sh .

RUN chmod +x ./start.sh

EXPOSE 25565

CMD ["./start.sh"]
