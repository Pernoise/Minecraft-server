FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /server

# Copy server files
COPY ./paper.jar ./server.jar
COPY ./eula.txt .
COPY ./start.sh .

# Make start.sh executable
RUN chmod +x ./start.sh

# Expose Minecraft default port
EXPOSE 25565

# Run start script
CMD ["./start.sh"]
