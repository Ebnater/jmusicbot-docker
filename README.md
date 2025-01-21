# JMusicBot Docker Implementation

This guide will help you set up JMusicBot using Docker. Follow the instructions below to get started.

## Prerequisites

- Docker installed on your system
- Docker Compose installed on your system

## Getting Started

1. Create a directory for JMusicBot:
    ```sh
    mkdir -p path/to/Jmusicbot
    cd path/to/Jmusicbot
    ```

2. Create a `docker-compose.yml` file with the following content:
    ```yaml
    version: '3.8'

    services:
      jmusicbot:
        image: git.serv.eserver.icu/jmusicbot-docker:latest
        container_name: jmusicbot
        volumes:
          - ./config.txt:/opt/jmusicbot/config.txt
        restart: unless-stopped
    ```

3. Create a `config.txt` file in the same directory with your JMusicBot configuration.
   You can find the `config.txt` here [JmusicBot Example Configuration](https://jmusicbot.com/config/)

4. Start the JMusicBot container:
    ```sh
    docker-compose up -d
    ```

5. Verify that the container is running:
    ```sh
    docker ps
    ```

## Stopping the Container

To stop the JMusicBot container, run:
```sh
docker-compose down
```

## Additional Information

- The `config.txt` file should contain your JMusicBot configuration.
- The container will automatically restart unless stopped manually.

For more information, visit the [JMusicBot GitHub repository](https://github.com/jagrosh/MusicBot).
