FROM docker.io/node:22.3

LABEL description="A magical documentation site generator."
LABEL maintainer="podboy"

WORKDIR /docs

RUN npm install -g docsify-cli@${VERSION}

EXPOSE 3000/tcp

ENTRYPOINT docsify serve .
