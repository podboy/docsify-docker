# docsify docker

> Build Docsify Docker Image.

## Introduction

Docsify turns one or more Markdown files into a Website, with no build process required.

- [Documentation](https://docsify.js.org/#/)
- [GitHub](https://github.com/docsifyjs/docsify/)

The image is created by and maintained by [zoumingzhe](https://github.com/zoumingzhe).

## Usage

```shell
docker pull docker.io/mingzhebaosheng/docsify:latest -p 3000:3000 -v $(pwd)/example:/docs:ro
```

docker-compose:

```docker-compose
version: '3'

services:
  app:
    container_name: docsify
    image: docker.io/mingzhebaosheng/docsify:latest
    privileged: true
    user: ${HOST_USER_ID:-0}:${HOST_GROUP_ID:-0}
    ports:
      - ${APP_PORT:-3000}:3000
    volumes:
      - ./example:/docs:ro
```
