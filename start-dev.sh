#!/bin/bash

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

# Stop and remove existing container
docker stop spartan-server || true
docker rm spartan-server || true

# If the -s flag is passed, start with a shell; otherwise, run the application
if [ "$START_SHELL" = true ]; then
  echo "Starting container with shell access..."
  docker run -it \
    --name spartan-server \
    -p 7051:7051 \
    -v $(pwd):/usr/src/spartian-server \
    -v /usr/src/spartan-server/node_modules \
    node:18 \
    bash -c "cd /usr/src/spartan-server && npm install && bash"
else
  echo "Starting container in normal mode..."
  docker run -d \
    --name spartan-server \
    -p 7051:7051 \
    -v $(pwd):/usr/src/spartian-server \
    -v /usr/src/spartan-server/node_modules \
    spartan-server:latest \
    bash -c "cd /usr/src/spartan-server && npm install && node index.js"
fi

