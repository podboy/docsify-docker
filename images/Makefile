MAKEFLAGS += --always-make

all: build-image

build-image:
	podman build --file Dockerfile --tag docsify:latest .

login:
	podman login --verbose docker.io

push-image: login
	podman push localhost/docsify:latest mingzhebaosheng/docsify:latest

clean-image:
	podman image prune --all --force

save-image:
	podman save --output docsify.latest.tar docsify:latest

clean: clean-image
	podman system prune --all --force
