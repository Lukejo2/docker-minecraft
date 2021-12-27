#!/bin/sh
rm -f /server/server.jar
cp server.jar /server/server.jar
cd /server

java -Xmx4G -Xms1G -jar server.jar nogui