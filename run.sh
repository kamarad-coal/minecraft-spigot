#!/bin/bash

cd /minecraft

java -Xmx${MAX_RAM} -Xms${MIN_RAM} -jar spigot.jar nogui
