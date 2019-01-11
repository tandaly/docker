#!/bin/sh

chmod +x ./bin/catalina.sh
chmod +x entrypoint.sh
docker-compose build
