#!/bin/bash

# Check if the shell flag (-s) is passed
START_SHELL=false
while getopts "s" opt; do
  case $opt in
    s)
      START_SHELL=true
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done

# Stop and remove any existing container
docker stop spartian-server || true
docker rm spartian-server || true

# If the -s flag is passed, start with a shell; otherwise, run the application
if [ "$START_SHELL" = true ]; then
  echo "Starting container with shell access..."
  docker run -it \
    --name spartian-server \
    -p 7051:7051 \
    -v $(pwd):/usr/src/spartian-server \
    -v /usr/src/spartian-server/node_modules \
    node:18 \
    bash -c "cd /usr/src/spartian-server && npm install && bash"
else
  echo "Starting container in normal mode..."
  docker run -d \
    --name spartian-server \
    -p 7051:7051 \
    -v $(pwd):/usr/src/spartian-server \
    -v /usr/src/spartian-server/node_modules \
    spartian-server:latest \
    bash -c "cd /usr/src/spartian-server && npm install && node index.js"
fi

