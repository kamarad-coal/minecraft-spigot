FROM openjdk:slim

ARG MINECRAFT_VERSION=1.16.4

ENV MIN_RAM=1G
ENV MAX_RAM=2G

LABEL maintainer="Kamarad Coal <alex@renoki.org>"

WORKDIR /minecraft

RUN apt update && \
    apt -y install wget && \
    wget -O spigot.jar https://cdn.getbukkit.org/spigot/spigot-${MINECRAFT_VERSION}.jar

ADD run.sh /minecraft/run.sh
ADD server.properties /minecraft/server.properties

EXPOSE 25565

ENTRYPOINT ["run.sh"]
