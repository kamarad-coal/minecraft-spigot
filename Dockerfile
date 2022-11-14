FROM alpine:3.16.3

# Will be replaced at the building step. Used to know
# which version of Minecraft should be downloaded.
ARG MINECRAFT_VERSION=1.16.5

# Specifying Java envs.
ENV JAVA_VERSION_MAJOR=8
ENV JAVA_VERSION_MINOR=112
ENV JAVA_VERSION_BUILD=15
ENV JAVA_PACKAGE=server-jre
ENV JAVA_HOME=/opt/jdk
ENV PATH=${PATH}:/opt/jdk/bin

# Specifying OS envs.
ENV LANG=C.UTF
ENV UID=1000
ENV GUID=1000

LABEL maintainer="Kamarad Coal <alex@renoki.org>"

WORKDIR /minecraft

ADD minecraft/run.sh minecraft/server.properties /minecraft/

# Install packages.
RUN apk upgrade --update && \
    apk add --no-cache --update wget curl ca-certificates openssl bash git screen util-linux sudo shadow nss && \
    update-ca-certificates && \
    apk add --no-cache --update openjdk8-jre && \
    # Add "kamarad" user than can access "/minecraft"
    addgroup -g 1000 -S kamarad && \
    adduser -u 1000 -S kamarad -G kamarad -h /minecraft && \
    echo "kamarad ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/kamarad && \
    chown kamarad:kamarad /minecraft && \
    # Build the JAR file for the current version.
    wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar && \
    java -jar BuildTools.jar --rev $MINECRAFT_VERSION && \
    mv spigot-*.jar spigot.jar && \
    chmod +x /minecraft/run.sh && \
    rm -rf BuildTools.jar BuildTools.log.txt BuildData/ Bukkit CraftBukkit Spigot apache-maven-3.6.0 work/ && \
    rm -rf .git/ .github/ *.md && \
    rm -rf /var/cache/apk/*

EXPOSE 25565

ENTRYPOINT ["/minecraft/run.sh"]
