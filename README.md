# How to configure [localstack](https://docs.localstack.cloud/getting-started/quickstart/)?

## Using Docker

### One time setup

1. Install docker (might need docker-compose separately for linux):
    1. [Linux](https://docs.docker.com/desktop/install/linux-install/)
    2. [Mac](https://docs.docker.com/desktop/install/mac-install/)
    3. [Windows](https://docs.docker.com/desktop/install/windows-install/)
2. In case docker-compose is not installed for Linux, refer to [this](https://docs.docker.com/compose/install/#scenario-two-install-the-compose-plugin)
3. Once docker is installed, spin up the daemon service by simply launching the Desktop version and then open a terminal. Execute `docker -v` and `docker-compose -v` to establish that both are running.
4. Next, pull the localstack image by running `docker pull localstack/localstack`

### Running it locally

1. Once the setup is done, in case Docker Desktop is not running, spin it up initially. 
2. Navigate to the directory holding the `docker-compose.yml` and `Dockerfile` in a terminal
3. Execute `docker-compose up --build`

That's all, you will see the docker container spin up and the scripts specified under `./scripts` executing

### How it executes?

1. When the container is started, we execute `./scripts/init.sh`
2. This is the parent script that executes all the child scripts in the order of their imports.

For any queries, please create issues in the repository.
