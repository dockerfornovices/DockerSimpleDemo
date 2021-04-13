# Running mongo db dev setup

# To close all the containers

```shell
docker compose -f ./docker/dev-compose.yaml down
```

##  To get get a shell

```shell
 docker compose -f ./dockerdev-compose.yaml run shell
```

Note that the `db-scripts/` directory is bind mounted into the container

## To bring up a Python developer environment

```shell
docker compose -f docker/dev-compose.yaml run python
```

Note:

* The `src/` directory is bind mounted into the container
* If any any changes are made to the requirements file or the dockerfile then the Python image needs to be rebuild `docker-compose -f docker/dev-compose.yaml build python`
