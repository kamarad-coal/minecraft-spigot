#!/bin/bash

if [ ! -f /minecraft/world/session.lock ]; then
    rm -rf /minecraft/world/session.lock
fi

if [ ! -f /minecraft/world_nether/session.lock ]; then
    rm -rf /minecraft/world_nether/session.lock
fi

if [ ! -f /minecraft/world_the_end/session.lock ]; then
    rm -rf /minecraft/world_the_end/session.lock
fi

java $JAR_ARGS -jar spigot.jar
