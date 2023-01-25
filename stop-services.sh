#!/bin/bash

echo "🏠 Stopping Home Assistant container ..."
docker-compose -f ./uptime-kuma/docker-compose.yml down

echo "🛑 Stopping Adguard Home ..."
docker-compose -f ./adguard-home/docker-compose.yml down

echo "🎬 Stopping Plex container ..."
docker-compose -f ./plex/docker-compose.yml down

echo "🏗️ Stopping Portainer container ..."
docker-compose -f ./portainer/docker-compose.yml down

echo "💚 Stopping Uptime Kuma container ..."
docker-compose -f ./uptime-kuma/docker-compose.yml down

echo "✅ Done"