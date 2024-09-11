# Server of the Spartan Fitness App

## Get started (as a developer)
1. We exclusively work with Docker. For installation please refer to the [official documentation!](https://docs.docker.com/engine/install/)
 
2. Clone this repo:
   ```
    git clone git@github.com:qleml/spartan-server.git
    cd spartan-server
   ```
3. Start by making the build and run scripts for docker executable:
    ```
    chmod +x build.sh run.sh
    ```
Then build the docker image by running the following script:
    ```
    ./build.sh
    ```
    This will also prune all resulting untagged images in case of a rebuild.
4. Finally, start the server by running the container with
    ```
    ./run.sh
    ```
    This script mounts all the necessary volumes and should run the application on `localhost:7051` in the docker container called `spartan-server-dev`. You have the option to start the script with the `-s` flag, i.e. `./run.sh -s`. This will open a shell in the container and you can proceed with `npm run dev` to run the application. The shell is important, because npm modules should always be installed from this shell inside the container (i.e. if you want to install further packages for the application with e.g. the `npm` package manager). If you prefer, you can rebuild the Docker image afterwards following step 3.

