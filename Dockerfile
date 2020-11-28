FROM alpine:3.12

# Will be replaced at the building step. Used to know
# which version of Minecraft should be downloaded.
ARG MINECRAFT_VERSION=1.16.4

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

# The environment variables for the server.
ENV JAR_ARGS = "-Xmx2G -Xms1G"

LABEL maintainer="Kamarad Coal <alex@renoki.org>"

WORKDIR /minecraft

ADD /minecraft/run.sh /minecraft/run.sh
ADD /minecraft/server.properties /minecraft/server.properties

# Install packages.
RUN apk upgrade --update && \
    apk add --update wget curl ca-certificates openssl bash git screen util-linux sudo shadow nss && \
    update-ca-certificates && \
    apk add openjdk8-jre

# Add "kamarad" user than can access "/minecraft"
RUN addgroup -g 1000 -S kamarad && \
    adduser -u 1000 -S kamarad -G kamarad -h /minecraft && \
    echo "kamarad ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/kamarad && \
    chown kamarad:kamarad /minecraft

# Download the Minecraft version.
RUN wget -O spigot.jar https://cdn.getbukkit.org/spigot/spigot-${MINECRAFT_VERSION}.jar && \
    chmod +x /minecraft/run.sh

EXPOSE 25565

ENTRYPOINT ["/minecraft/run.sh"]
