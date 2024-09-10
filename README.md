# Server of the Spartan Fitness App

## Get started (as a developer)
1. We exclusively work with Docker. For installation please refer to the [official documentation!](https://docs.docker.com/engine/install/)
 
2. Clone this repo:
   ```
    git clone git@github.com:qleml/spartan-server.git
   ```
3. Start by building the docker image by running (in the project root, where the Dockerfile is placed):
    ```
    docker build -t spartan-server:latest .
    ```
4. Then make the `start-dev.sh` script executable:
    ```
    chmod +x start-dev.sh
    ```
    and execute it:
    ```
    ./start-dev.sh
    ```
    This script mounts all the necessary volumes and should run the application on `localhost:7051` in the docker container called `spartan-server`. you have the option to start the script with the `-s` flag, i.e. `./start-dev.sh -s`. This will open a shell in the container and you can proceed with `node index.js` to run the application. The shell is important, because npm modules should always be installed from this shell inside the container (i.e. if you want to install further packages for the application with e.g. the `npm` package manager). If you prefer, you can rebuild the Docker image afterwards following 3.

