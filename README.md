# docker-geyser

[![Docker Pulls](https://img.shields.io/docker/pulls/sammyaknan/docker-geyser)](https://hub.docker.com/r/sammyaknan/docker-geyser)
[![Docker Image Version (tag)](https://img.shields.io/docker/v/sammyaknan/docker-geyser/latest)](https://hub.docker.com/r/sammyaknan/docker-geyser/tags)

[Geyser](https://geysermc.org/) as a Docker Container

[Docker Hub](https://hub.docker.com/r/Sammster10/docker-geyser/) | [GitHub Repo](https://github.com/Sammster10/docker-geyser/)

## Running

- Download the `docker-compose.yml` and `docker.env` files:
  ```
  wget https://github.com/Sammster10/docker-geyser/raw/main/docker-compose.yml
  wget https://github.com/Sammster10/docker-geyser/raw/main/docker.env
  ```

- Edit `docker.env` to fit your preferences.

- After that, start the container with this command:
  ```
  docker compose up -d
  ```

- To stop the server, use this command:
  ```
  docker compose down
  ```

- To update the image, use this command:
  ```
  docker compose pull
  ```
