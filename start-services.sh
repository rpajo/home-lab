#!/bin/bash

echo "🏠 Run Home Assistant container ..."
docker-compose -f ./uptime-kuma/docker-compose.yml up -d

echo "🛑 Run Adguard Home ..."
docker-compose -f ./adguard-home/docker-compose.yml up -d

echo "🎬 Run Plex container ..."
docker-compose -f ./plex/docker-compose.yml up -d

echo "🏗️ Run Portainer container ..."
docker-compose -f ./portainer/docker-compose.yml up -d

echo "💚 Run Uptime Kuma container ..."
docker-compose -f ./uptime-kuma/docker-compose.yml up -d

echo "✅ Done"