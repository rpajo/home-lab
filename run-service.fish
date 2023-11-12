#!/usr/bin/env fish

# Check if argument is provided
if test -z "$argv[1]" -o -z "$argv[2]"
    echo "Usage: docker-service.sh <start|stop|restart|down> <service>"
    exit 1
end

# Parse arguments
set command $argv[1]
set service $argv[2]

# Check if command is valid
if not contains $command start stop restart down
  echo "Invalid command. Use start, stop, down or restart."
  exit 1
end

# Check if Docker Compose is installed
if not command -v docker compose >/dev/null
  echo "Docker is not installed."
  exit 1
end

# Execute command
switch $command
  case "start"
    docker compose -f $service/docker-compose.yml up -d
  case "stop"
    docker compose -f $service/docker-compose.yml stop
  case "restart"
    docker compose -f $service/docker-compose.yml restart
  case "down"
    docker compose -f $service/docker-compose.yml down
end

echo "Docker service '$service' has been $command-ed."
